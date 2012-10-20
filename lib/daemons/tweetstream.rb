#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "development"

root = File.expand_path(File.dirname(__FILE__))
root = File.dirname(root) until File.exists?(File.join(root, 'config'))
require File.join(root, "config", "environment")


TweetStream::Daemon.new('tracker', log_output: true, multiple: true).track('dmkr') do |status|
  p "got new tweet"
  include Twitter::Extractor
  require File.join(root, "config", "environment")
  ActiveRecord::Base.logger = ActiveSupport::BufferedLogger.new('/Users/camdub/Code/decisionmakr/decisionmakr/tracker.output')

  # get the rating and the hashtags
  rating = TweetProcessor.parse_rating(status.text)
  hashtags = extract_hashtags(status.text).delete_if { |x| x == "dmkr" }

  begin
    if rating && !hashtags.empty?
      ActiveRecord::Base.connection.reconnect!

      found_hashes = TweetProcessor.update_rating(rating, hashtags)

      p found_hashes
      unless found_hashes.empty?
        TweetProcessor.add_tweet(status, found_hashes)
      end
    end
  rescue => e
    p e.message
  end
end
