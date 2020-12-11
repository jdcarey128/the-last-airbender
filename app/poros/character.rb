class Character 
  attr_reader :name, :affiliation, :allies, :enemies, :photo

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = format(data[:allies], 'Allies')
    @enemies = format(data[:enemies], 'Enemies')
    @photo = data[:photoUrl]
  end


  private 

    def format(list, reference)
      list.reduce("#{reference}: ") do |string, ally|
        string + ally + ', '
      end.chomp(', ')
    end
end
