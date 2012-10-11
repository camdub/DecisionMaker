class Participant < ActiveRecord::Base

  has_many :events, through: :ratings
  has_many :ratings


end
