class CharacterFacade

  attr_reader :name, :house, :patronus, :role

  def initialize(info)
    @name = info[:name]
    @house = info[:house]
    @patronus = info[:patronus]
    @role = info[:role]
  end

  
end
