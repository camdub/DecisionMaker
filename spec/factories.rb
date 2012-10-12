FactoryGirl.define do

  factory :participant do
    name "Cameron Woodmansee"
    rating_num nil
    rating_perc nil
  end

  factory :rating, class: Rating do
    total_rating 52
    rating_count 11
  end

end
