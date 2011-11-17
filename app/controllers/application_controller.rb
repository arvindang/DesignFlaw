class ApplicationController < ActionController::Base
  protect_from_forgery
  
  require "twitter"
  
  # Twitter.configure do |config|
  #   config.consumer_key = "#"
  #   config.consumer_secret = "#"
  #   config.oauth_token = "#"
  #   config.oauth_token_secret = "#"
  # end    
  
end
