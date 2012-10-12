class Participant < ActiveRecord::Base

  has_many :events, through: :ratings
  has_many :ratings

  attr_accessor :rating_count
  attr_accessor :total_rating

  def set_rating(rc, tr)
    self.rating_count = rc
    self.total_rating = tr
  end
end

