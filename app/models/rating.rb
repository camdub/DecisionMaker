class Rating < ActiveRecord::Base

  before_create :set_ratings

  belongs_to :event
  belongs_to :participant

  def set_ratings
    self.rating_count = 0
    self.total_rating = 0
  end
end
