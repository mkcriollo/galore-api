class EventsController < ApplicationController
  
  def get_events
    @events = Event.all
    render :index
  end

end
