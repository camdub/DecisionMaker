#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "development"

root = File.expand_path(File.dirname(__FILE__))
root = File.dirname(root) until File.exists?(File.join(root, 'config'))
require File.join(root, "config", "environment")

$running = true
Signal.trap("TERM") do
  $running = false
end

while($running) do

  TweetStream::Client.new.on_reconnect do |timeout, retries|
    Rails.logger.debug "timeout: #{timeout} retries: #{retries}"
  end.on_error do |msg|
    Rails.logger.debug "error"
  end.track('dmkr') do |status|
    TweetProcessor.new(status).process
    Rails.logger.debug "#{status.text}"
  end

end
