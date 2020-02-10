class SearchController < ApplicationController

  def index
    conn = Faraday.new('https://www.potterapi.com/v1/')
    response = conn.get("characters?key=#{ENV['HP_KEY']}&house=#{params[:house]}")

    
  end

end
