class EventsController < ApplicationController
  def index
    dui_start = Date.parse 'Fri, 01 Apr 2016'
    dui_end = Date.parse 'Mon, 04 Apr 2016'
    @events = Event.order('starts_at ASC').paginate(page: params[:page], per_page: 100)
  end

  def show
    @event = Event.find params[:id]
  end
end
