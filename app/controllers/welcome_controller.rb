class WelcomeController < ApplicationController
  def index
    key = ENV['NREL_API_KEY']
    @search = Search.add_zipcode(key)
  end
end
