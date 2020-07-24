class SearchController < ApplicationController
  def index
    @station = NrelResults.new.get_station(params[:location])
  end
end
