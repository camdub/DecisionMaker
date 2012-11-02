class Event < ActiveRecord::Base

  has_many :participants, through: :ratings
  has_many :ratings
  accepts_nested_attributes_for :participants

  validates_presence_of :title, :location

  def date_range
    "#{start_date.strftime('%m/%d/%Y')} - #{end_date.strftime('%m/%d/%Y')}" if (start_date && end_date)
  end

  def date_range=(daterange)
    self.start_date, self.end_date = daterange.split(' - ').map { |d| Date.strptime(d, '%m/%d/%Y') }
  end
end
