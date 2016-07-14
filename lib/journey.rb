class Journey

attr_reader :entry_station, :exit_station, :fare

PENALTY_FARE = 6
MIN_FARE = 1

  def initialize(entry_station)
    @entry_station = entry_station
    @exit_station = nil
    @fare = PENALTY_FARE
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def complete?
    !!@entry_station && !!@exit_station
  end

  def fare
    @fare = MIN_FARE if self.complete?
  end

end
