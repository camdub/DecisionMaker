class Event < ActiveRecord::Base

  validates_presence_of :title, :location

  def date_range
    "#{start_date.strftime('%Y/%m/%d')} - #{end_date.strftime('%Y/%m/%d}')}" if (start_date && end_date)
  end

  def date_range=(daterange)
    self.start_date, self.end_date = daterange.split(' - ').map { |d| Date.strptime(d, '%m/%d/%Y') }
  end
end
