class HomeController < ApplicationController
  def index
    @users = User.all

    @event = Event.recent
    if @event
      redirect_to :controller => "events", :action => "show", :id => @event.id
    end
  end
end
