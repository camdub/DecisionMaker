require 'spec_helper'

class Mock_Tweet
  attr_accessor :text
  def initialize(status)
    self.text = status
  end
end


describe TweetProcessor do

  describe "total test" do
    let(:tweet) { double }
    let(:user) { double }

    it 'saves tweet with good values`' do
      tweet.stub text: '#dmkr #doha #cw great talk, 4 star'
      user.stub screen_name: 'tester'
      user.stub name: 'test test'
      tweet.stub user: user
      tweet.stub created_at: 'Wed Aug 27 13:08:45 +0000 2008'"rocks your socks"
      t = TweetProcessor.new(tweet).process
      p "done with first"
    end

  end

  describe 'parses the rating from a Tweet' do

    it "calculates no rating if no stars are mentioned" do
      subject.parse_rating('no rating').should == nil
    end

    it "caclulates a rating from tweet with '4 stars'" do
      subject.parse_rating('rating with 4 star').should == 4
    end

    it "calculates a rating from tweet with '5stars'" do
      subject.parse_rating('rating with 5stars').should == 5
    end
  end

  describe 'correctly extracts hashtags to find the event' do

    let(:tweet) { Mock_Tweet.new("#dmkr some text #event #speaker") }
    before { subject.tweet = tweet }

    it 'extracts right number of hashtags' do
      subject.should have(2).hashtags
    end

  end

  context 'update values in the databases' do

    let(:r) { r = FactoryGirl.create(:rating) }
    before { r }

    describe '#update_rating' do

      it 'updates the rating when given an event hash and a participant hash' do
        subject.update_rating(4, ["doha", "cw"])
        expect { r.reload }.to change { r.total_rating }.by 4
      end

      it 'updates nothing when hashtags don\'t match' do
        subject.update_rating(3, ["notexist","noname"])
        expect { r.reload }.not_to change { r.total_rating }
      end

    end

    describe '#add_tweet' do
      let(:tweet) { double }
      let(:user) { double }

      it 'saves tweet with good values`' do
        tweet.stub text: '#dmkr #doha #cw great talk, 4 star'
        user.stub screen_name: 'tester'
        user.stub name: 'test test'
        tweet.stub user: user
        tweet.stub created_at: 'Wed Aug 27 13:08:45 +0000 2008'

        subject.update_rating(3, ["doha","cw"])
        expect { subject.add_tweet(tweet) }.to change { Tweet.count }.by 1
      end
    end

  end

end
