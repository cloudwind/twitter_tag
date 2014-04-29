load 'twitter_script.rb'
class SearchController < ApplicationController

def index
    @search = "#cat"
  if params[:q].blank?
    @tweets = search("#cat")
  else
    @search = params[:q]
    @tweets = search(params[:q])
  end
  #@tweets = search("#cat")
end

def user_tweet
 
end
end
