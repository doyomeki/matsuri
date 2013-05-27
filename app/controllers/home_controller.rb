class HomeController < ApplicationController
  def index
    @event = Event.top_data
    if @event
      redirect_to :controller => "events", :action => "show", :id => @event.first.id
    end
  end
end
