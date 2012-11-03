module MobileHelper

=begin
    140 char Twitter limit
  -------------------------------------------------
    1 space after tweet text
  5 char for the number of stars (i.e. '5star')
  1 space after the number of stars
  5 char for #dmkr
  1 space after the decision maker hashtag
  n char for the event hashtag
  1 space after event hashtag
  - n char for user hashtag
  -------------------------------------------------
    maxTweetLength
=end

  def max_tweet_length
    140 - 13 - 3 - @participant.hashtag.length - @event.hashtag.length
  end

  def draw_stars(count)
    begin
      (0..5).map do |pos|
        star_image(((count-pos)*2).round)
      end.join.html_safe
    rescue
      "None"
    end
  end

  private

  def star_image(value)
    type = star_type(value)
    type != 'none' ? image_tag("#{type}-star.png", class: "#{type}-star") : ''
  end

  def star_type(value)
    if value <= 0
      'none'
    elsif value == 1
      'half'
    else
      'full'
    end
  end
end
