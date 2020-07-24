class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times
  def initialize(station_data)
    @name = station_data[:fuel_stations].first[:station_name]
    @address = station_data[:fuel_stations].first[:street_address]
    @fuel_type = station_data[:fuel_stations].first[:fuel_type_code]
    @access_times = station_data[:fuel_stations].first[:access_days_time]
  end
end
