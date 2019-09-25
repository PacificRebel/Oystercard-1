require './lib/station'
class Journey

  def entry_station(station)
    @station = station
    @station.name
  end
end