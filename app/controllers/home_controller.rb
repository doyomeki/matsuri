class HomeController < ApplicationController
  def index
    @event = Event.top_data
    if @event
      redirect_to :controller => "events", :action => "index", :id => @event.first.id
    end
  end
end
