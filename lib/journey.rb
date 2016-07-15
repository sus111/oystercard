class Journey

attr_reader :entry_station, :exit_station

PENALTY_FARE = 6
MIN_FARE = 1

  def initialize(entry_station = nil)
    @entry_station = entry_station
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def complete?
    !!@entry_station && !!@exit_station
  end

  def fare
     complete? ? MIN_FARE + (@entry_station.zone - @exit_station.zone).abs : PENALTY_FARE
  end

end
