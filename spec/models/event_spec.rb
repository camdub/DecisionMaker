require 'spec_helper'

describe Event do

  describe "#daterange virtual attr" do

    let(:daterange) { "10/10/2012 - 10/18/2012" }

    it "creates two new date objects" do
      start_date, end_date  = daterange.split(' - ').map { |d| Date.strptime(d, '%m/%d/%Y') }
      start_date.should be_a_kind_of Date
      end_date.should be_a_kind_of Date
    end
  end

end
