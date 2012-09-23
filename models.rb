class Event
  include MongoMapper::Document
  
  key :title, String
  key :hashtags, String
  key :city, String
  key :state, String
  key :country, String
  key :startdate, Date
  key :enddate, Date
  
  many :participants
end

class Participant
  include MongoMapper::EmbeddedDocument
  
  key :name, String
  key :hashtag, String
  key :rating, Integer
  key :ratingcount, Integer
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

  def parseratingfromtweet(mytweet)
	nospacetweet = mytweet.gsub(/\s+/, "")
	position = nospacetweet.index /[0-5]star/i
	if (position != nil)
		rating = nospacetweet[position]
	end
	rating
  end
end


