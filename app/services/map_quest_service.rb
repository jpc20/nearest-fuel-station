class MapQuestService
  def get_travel_info(from, to)
    resp = conn.get do |req|
      req.params['from'] = from
      req.params['to'] = to
    end
    JSON.parse(resp.body, symbolize_names: true)
  end

  private
  def conn
    Faraday.new('http://www.mapquestapi.com/directions/v2/route') do |f|
      f.params['key'] = ENV['MAPQUEST_API_KEY']
    end
  end
end
