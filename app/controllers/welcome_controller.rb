class WelcomeController < ApplicationController
  def index
    key = ENV['NREL_API_KEY']
    @zipcode = 
    @search = Search.add_zipcode(key, zipcode)
  end
end
