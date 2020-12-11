class Character 
  attr_reader :name, :affiliation, :allies, :enemies, :photo

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = format_list(data[:allies], 'Allies')
    @enemies = format_list(data[:enemies], 'Enemies')
    @photo = data[:photoUrl]
  end


  private 

    def format_list(list, reference)
      if list.empty? 
        reference + ': none'
      else 
        list.reduce("#{reference}: ") do |string, ref_type|
          string + ref_type + ', '
        end.chomp(', ')
      end
    end
end
