class HouseService

  def get_students(house)
    conn = Faraday.new('https://www.potterapi.com/v1/')
    response = conn.get("characters?key=#{ENV['HP_KEY']}&house=#{house}")

    parse = JSON.parse(response.body, symbolize_names: true)
  end
end
