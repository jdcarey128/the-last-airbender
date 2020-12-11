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
      affiliation: "Fire Nation Navy", 
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
  }
    character = Character.new(data)
    expect(character.allies).to eq('Allies: Ozai')
    expect(character.enemies).to eq('Enemies: Earth Kingdom')
    expect(character.name).to eq('Chan (Fire Nation admiral)')
    expect(character.affiliation).to eq('Fire Nation Navy')
    expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end

  describe 'instance methods' do 
    describe 'format_list' do 
      it "will return 'none' with empty list" do 
        data = {
          _id: "5cf5679a915ecad153ab68fd",
          allies: [],
          enemies: [],
          name: "Chan (Fire Nation admiral)",
          affiliation: "Fire Nation Navy", 
          photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
      }
        character = Character.new(data)

        expect(character.allies).to eq('Allies: none')
        expect(character.enemies).to eq('Enemies: none')
      end

      it 'will return string for one or more ally/enemy' do 
        data = {
          _id: "5cf5679a915ecad153ab68fd",
          allies: [
              "Ozai"
          ],
          enemies: [
              "Earth Kingdom", 
              "Zuko"
          ],
          name: "Chan (Fire Nation admiral)",
          affiliation: "Fire Nation Navy", 
          photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
      }
        character = Character.new(data)

        expect(character.allies).to eq('Allies: Ozai')
        expect(character.enemies).to eq('Enemies: Earth Kingdom, Zuko')

      end
    end
  end
end
