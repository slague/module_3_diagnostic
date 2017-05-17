class WelcomeController < ApplicationController
  def index
    key = ENV['NREL_API_KEY']
    zipcode = 80203  #hardcoded for the time being... 
    @search = Search.add_zipcode(key, zipcode)
  end
end
