require 'rails_helper' 

RSpec.describe Character do 
  it 'can list character attributes' do 
    data = {
      _id: "5cf5679a915ecad153ab68fd",
      allies: [
          "Ozai"
      ],
      enemies: [
          "Earth Kingdom"
      ],
      name: "Chan (Fire Nation admiral)",
      affiliation: "Fire Nation Navy"
  }
    character = Character.new(data)
    expect(character.allies).to eq('Allies: Ozai')
    expect(character.enemies).to eq('Enemies: Earth Kingdom')
    expect(character.name).to eq('Chan (Fire Nation admiral)')
    expect(character.affiliation).to eq('Fire Nation Navy')
  end

  # describe 'instance methods' do 
  #   describe 'format' do 
  #     come back to 
  #   end
  # end
end
