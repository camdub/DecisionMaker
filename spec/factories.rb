FactoryGirl.define do

  factory :tweet do
    text = "5 star speech by the former prez #cw #doha"
  end

  factory :participant do
    name "Cameron Woodmansee"
    rating_num nil
    rating_perc nil
    hashtag "cw"
  end

  factory :event do
    title "Climate Conf"
    location "Doah, Qatar"
    hashtag "doha"
  end

  factory :rating, class: Rating do
    event
    participant

    total_rating 52
    rating_count 11
  end

end
