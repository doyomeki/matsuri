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
    @wdays = ["日", "月", "火", "水", "木", "金", "土"]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  def entry
    @event = Event.find(params[:id])
    @schedules = @event.time_schedules

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @event }
    end
  end
end
