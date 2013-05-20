#encoding: utf-8

class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
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
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  def entry
    @event = Event.find(params[:id])
    @schedules = @event.time_schedules
    @select_entry = true

    respond_to do |format|
      format.html # entry.html.erb
      format.json { render json: @event }
    end
  end

  def update
    respond_to do |format|
      format.html { redirect_to entry_event_path, notice: 'Speaker was successfully updated.' }
      format.json { head :no_content }
    end
  end
end
