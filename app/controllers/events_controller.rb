class EventsController < ApplicationController

  respond_to :html, :json

  def index
    @events = Event.all
    respond_with(@events)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    puts @event

    if @event.save
      redirect_to @event, notice: 'Event created successfully.'
    else
      render action: 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  private # strong params

  def event_params
    params.require(:event).permit(:title, :date_range, :location, :participants_attributes)
  end

end


