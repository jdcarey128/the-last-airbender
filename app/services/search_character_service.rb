class SearchCharacterService

  def self.nation_characters(nation)
    json = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters') do |req|
      req.params['affiliation'] = format_nation(nation)
      req.params['perPage'] = 20
    end
    JSON.parse(json.body, symbolize_names: true)
  end


  private 
    def self.format_nation(nation)
      nation.sub('_', ' ')
    end
  
end
