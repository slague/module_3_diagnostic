class Search

  # def initialize
  #   @zipcode = zipcode
  # end

  def self.add_zipcode(key)
    new_search = AltfuelService.build_search(key)
    new(new_search)
  end

end
