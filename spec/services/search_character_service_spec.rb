require 'rails_helper'

RSpec.describe SearchCharacterService do 
  describe 'nation_characters' do 
    it 'returns a parsed character array', :vcr do 
      result = SearchCharacterService.nation_characters('fire_nation')
  
      expect(result).to be_a(Array)
  
      expect(result.first).to have_key(:allies)
      expect(result.first[:allies]).to be_a(Array)
  
      expect(result.first).to have_key(:enemies)
      expect(result.first[:enemies]).to be_a(Array)
  
      expect(result.first).to have_key(:name)
      expect(result.first[:name]).to be_a(String)
  
      expect(result.first).to have_key(:affiliation)
      expect(result.first[:affiliation]).to be_a(String)
    end
  end
end
