class MapQuestResults
  def get_travel_info(from, to)
    travel_data = MapQuestService.new.get_travel_info(from, to)
    Map.new(travel_data)
  end
end
