class Participant < ActiveRecord::Base

  has_many :events, through: :ratings
  has_many :ratings

  attr_accessor :rating_num
  attr_accessor :rating_perc

  def calculate_ratings(rating)
    if rating.total_rating == 0 && rating.rating_count == 0
      self.rating_num = 0
      self.rating_perc = 0
    else
      self.rating_num = calc_rating(rating.total_rating, rating.rating_count)
      self.rating_perc = calc_perc(rating.total_rating, rating.rating_count)
    end
  end

  private
    def calc_rating(totalrating, numreviews)
      value = totalrating.to_f / numreviews

      # the formula below is used to round to the nearest 0.5
      # The precision formula is: round(number * (1/precision)) / 1 / precision)
      # So in our case, we want round(value * (1/0.5)) / (1/0.5)
      # which in ruby, translates to the line below
      # http://bit.ly/Rn8G0k
      (value * 2).round / 2.0
    end

    def calc_perc(totalrating, numreviews)
      maxrating=5 # 0-5 stars
      (((totalrating.to_f / numreviews) / maxrating).round(2) * 100).to_i
    end
end

