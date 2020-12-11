require 'rails_helper'

RSpec.describe SearchFacade do 
  describe 'nation_characters(nation)' do 
    it 'returns an array of characters' do 
      result = SearchFacade.nation_characters('fire_nation')

      expect(result).to be_a(Array)
      expect(result.first).to be_a(Character)
    end
  end

end
