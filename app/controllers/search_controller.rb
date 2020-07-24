class SearchController < ApplicationController
  def index
    @station = NrelResults.new.get_station(params[:location])
    @map = MapQuestResults.new.get_travel_info(params[:location], @station.address)
  end
end
