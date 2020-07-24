class Map
  attr_reader :distance,
              :travel_time,
              :directions
  def initialize(travel_data)
    @distance = travel_data[:route][:distance]
    @travel_time = format_tavel_time(travel_data[:route][:formattedTime])
    @directions = travel_data[:route][:legs].first[:maneuvers].map{ |d| d[:narrative] }
  end

  private
  def format_tavel_time(time)
    h, m, s = time.split(':').map(&:to_i)
    h %= 24
    ((((h * 60) + m) * 60) + s)/60 % 60
  end
end
