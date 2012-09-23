require './models'

class Main < Sinatra::Base
  
  configure do
    MongoMapper.connection = Mongo::Connection.from_uri(ENV['MONGO_URI'])
    MongoMapper.database = 'decisionmaker'
  end
  
  Rabl.register!
  
  before do
    content_type :json
  end
  
  get '/' do
    redirect '/eventlist.html'
    #send_file File.join(settings.public_folder, 'index.html')
  end
  
  get '/events' do
    @events = Event.all
    render :rabl, :events
  end
  
  get '/events/:id' do |id|
    @event_participants = Event.find(id).participants
    @event_participants.each do |p|
      p.calculateratings
    end
    render :rabl, :event
  end

  get '/participants/:searchhashtag' do |searchhashtag|
    @event = Event.where("participants.hashtag" => "#{searchhashtag}").first
    
    @event.participants.each do |x|
      if x.hashtag == searchhashtag
        @participant = x
      end
    end
    
    @participant.calculateratings
    render :rabl, :participant

  end
  
  get '/tweets/:hashtag' do |hashtag|
    "#{Tweet.where(participanthashtag: hashtag).to_json}"
  end
  
end

