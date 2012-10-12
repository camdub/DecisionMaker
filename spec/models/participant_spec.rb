require 'spec_helper'

describe Participant do

  describe "Calculate ratings from Rating" do

    let(:rating) { FactoryGirl.build(:rating) }
    let(:participant) { FactoryGirl.build(:participant) }

    it "calulates rating as a number to the nearest 0.5" do
      participant.calculate_ratings(rating)
      participant.rating_num.should == 4.5
    end

    it "calculates rating as a percentage" do
      participant.calculate_ratings(rating)
      participant.rating_perc.should == 95
    end

  end

end
