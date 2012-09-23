class Event
  include MongoMapper::Document
  
  key :title, String
  key :hashtags, String
  key :city, String
  key :state, String
  key :country, String
  key :startdate, String
  key :enddate, String
  
  many :participants
end

class Participant
  include MongoMapper::EmbeddedDocument
  
  key :name, String
  key :hashtag, String
  key :rating, Integer
  key :ratingcount, Integer
  key :organization, String
  
  embedded_in :event
  
  attr_accessor :newratingnumber
  attr_accessor :newratingperc

  def calculateratings
	  self.newratingnumber = calcrating(rating, ratingcount)
	  self.newratingperc = calcratingperc(rating, ratingcount)
  end

  private
    def roundhalf(unroundednumber)
	    (Float(unroundednumber*2).round(0))/2.0
    end

    def calcrating(totalrating, numreviews)
	    roundhalf(Float(totalrating)/Float(numreviews))
    end

    def calcratingperc(totalrating, numreviews)
	    maxrating=5
	    Integer(((Float(totalrating)/Float(numreviews))/maxrating)*100)
    end
end

class Tweet
  include MongoMapper::Document
  
  key :feedback, String
  key :rating, Integer
  key :participanthashtag, String
  key :processed, Integer

  def self.parse_rating(mytweet)
	  nospacetweet = mytweet.gsub(/\s+/, "")
  	position = nospacetweet.index /[0-5]star/i
  	if (position != nil)
  		rating = nospacetweet[position]
  	end
  	rating
  end
end


