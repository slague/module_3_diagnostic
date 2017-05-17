class Search

  def self.build_search(key)
    new_search = AltfuelService.build_search(key)
    new(new_search)
  end

end
