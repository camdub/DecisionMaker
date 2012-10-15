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

  TweetStream::Daemon.new.track('dmkr') do |status|
    # The status object is a special Hash with
    # method access to its keys.
    Rails.logger.debug "new tweets!"
    Rails.logger.debug "#{status.text}"
  end

end
