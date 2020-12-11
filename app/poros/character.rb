class Character 
  attr_reader :name, :affiliation, :allies, :enemies

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = format(data[:allies], 'Allies')
    @enemies = format(data[:enemies], 'Enemies')
  end


  private 

    def format(list, reference)
      list.reduce("#{reference}: ") do |string, ally|
        string + ally + ', '
      end.chomp(', ')
    end
end
