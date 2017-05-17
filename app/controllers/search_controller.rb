class WelcomeController < ApplicationController
  def index
    key = ENV['NREL_API_KEY']
    zipcode = 80203  #hardcoded for the time being...
    search = AltfuelService.build_search(key, zipcode)

    stations = search[:fuel_stations]#this is a collection of stations

    @ten_stations = stations[1..10] #gives me the first 10
  end
end
