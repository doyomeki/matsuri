#encoding: utf-8

class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @id = params[:id]
    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @event }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @schedules = @event.time_schedules
    @select_entry = false
    @wdays = ["日", "月", "火", "水", "木", "金", "土"]

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @event }
    end
  end

  def entry
    @event = Event.find(params[:id])
    @schedules = @event.time_schedules
    @select_entry = true

    respond_to do |format|
      format.html # entry.html.haml
      format.json { render json: @event }
    end
  end

  def update
    ActiveRecord::Base.transaction do

      # イベントの参加者を登録
      entry_event = user_entry?(params[:id], current_user.id)
      if entry_event.blank?
        event_participation = EventParticipation.new(event_id: params[:id], user_id: current_user.id)
        event_participation.save!
        event_participation.reload!
      else
        entry_event.first.cancelled = nil
        entry_event.first.save!
      end

      # 参加コンテンツを登録
      event_participation_id = user_entry?(params[:id], current_user.id).first.id
      schedules = Schedule.where(event_id: params[:id])
      schedules.each do |schedule|
        # ラジオボタンで選択されていた場合
        if params[schedule.id.to_s]
          contents = Content.where(schedule_id: schedule.id)
          contents.each do |content|
            entry_content = user_entry_content?(event_participation_id, content.id)
            if entry_content.blank?
              if content.id = params[schedule.id.to_s]
                content_participation = ContentParticipation.new(event_participation_id: event_participation_id, content_id: content.id)
                content_participation.save!
              end
            else
              entry_content.each do |content|
                content.destroy
              end
            end
          end
        else
          raise I18n.t("messages.error_select_content")
        end
      end
    end

    respond_to do |format|
      format.html { redirect_to entry_event_path, notice: I18n.t("messages.success_select_content") }
      format.json { head :no_content }
    end

    rescue => e
    respond_to do |format|
      format.html { redirect_to entry_event_path, notice: e.message }
      format.json { head :no_content }
    end
  end

  def keyword_authentication
    @event = Event.find(params[:id])
    if @event.keyword == params[:event][:keyword]
      redirect_to :controller => "events", :action => "show", :id => @event.id
    else
      redirect_to :action => "index", :id => @event.id, :flash => {:error => "合言葉が違います。"}
    end
  end

  private

  def user_entry?(event_id, user_id)
    EventParticipation.where(event_id: event_id, user_id: user_id)
  end

  def user_entry_content?(event_participation_id, content_id)
    ContentParticipation.where(event_participation_id: event_participation_id, content_id: content_id)
  end
end
