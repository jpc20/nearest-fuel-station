class NrelResults
  def get_station(location)
    station_data = NrelService.new.get_station(location)
    Station.new(station_data)
  end
end
