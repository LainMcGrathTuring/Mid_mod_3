class SearchController < ApplicationController

  def index
    render locals: {
        characters: HouseFacade.new.find_members(params[:house])
      }
  end

end
