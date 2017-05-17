class AltfuelService


  def self.build_search(key, zipcode)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?&radius=6.0&fuel_type=ELEC,LPG&location=#{zipcode}&api_key=#{key}")

    JSON.parse(response.body, symbolize_names: true)
    byebug
  end
end
