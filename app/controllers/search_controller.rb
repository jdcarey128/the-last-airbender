class SearchController < ApplicationController 

  def index 
    @characters = SearchFacade.nation_characters(params[:nation])
  end
end
