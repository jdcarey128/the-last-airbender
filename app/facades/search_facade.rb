class SearchFacade 

  def self.nation_characters(nation)
    characters = SearchCharacterService.nation_characters(nation)
    characters.map do |character|
      Character.new(character)
    end
  end
  
end
