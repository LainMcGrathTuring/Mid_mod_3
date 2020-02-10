class SearchController < ApplicationController

  def index
    HouseFacade.new.find_members(params[:house])
  end

end
