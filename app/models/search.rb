class Search

  # def initialize
  #   @zipcode = zipcode
  # end

  def self.add_zipcode(key, zipcode)
    new_search = AltfuelService.build_search(key, zipcode)
    new(new_search)
  end

end
