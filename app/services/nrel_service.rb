class NrelService

  def get_station(location)
    resp = conn.get do |req|
      req.params['location'] = location
    end
    JSON.parse(resp.body, symbolize_names: true)
  end


  private
  def conn
    Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json') do |f|
      f.params['fuel_type'] = 'ELEC'
      f.params['limit'] = 1
      f.params['api_key'] = ENV['NREL_API_KEY']
    end
  end
end
