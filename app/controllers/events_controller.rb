class EventsController < ApplicationController

 # respond_to :html
#  respond_to :json, only: [:index, :participants]

  def index
    @events = Event.all
    render json: @events
  end

  def participants
    @participants = Participant.includes(:ratings).where('ratings.event_id' => params[:id])
    @participants.each do |s|
      s.set_rating(s.ratings.first.rating_count, s.ratings.first.total_rating)
    end
    render json: @participants, each_serializer: ParticipantSerializer
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


