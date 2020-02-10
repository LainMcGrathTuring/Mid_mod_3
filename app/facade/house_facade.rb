class HouseFacade

  def initalize
  end

  def find_members(characters)
    characters.map do |character|
      CharacterFacade.new(characters)
    end
  end
end
