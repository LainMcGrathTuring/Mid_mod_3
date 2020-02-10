class HouseFacade

  def initalize
  end

  def find_members(house)
    characters = HouseService.new.get_characters(house)
    characters.map do |character|
      CharacterFacade.new(characters)
    end
  end
end
