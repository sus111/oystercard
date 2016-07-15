require_relative 'station'
require_relative 'journey_log'

class OysterCard

  MAX_LIMIT = 90
  MIN_FARE = 1

  attr_reader :balance, :entry_station, :exit_station, :journey_history, :journey

  def initialize
    @balance = 0
    @log = JourneyLog.new
  end

  def top_up(amount)
    fail "Top-up exceeds £#{MAX_LIMIT} max card limit" if balance + amount > MAX_LIMIT
    @balance += amount
  end

  def in_journey?
    !@journey.empty?
  end

  def touch_in(entry_station)
    fail "Your balance £#{balance} does not meet min fare" if balance < MIN_FARE
    deduct(@log.touch_in_check)
    @log.start(entry_station)
  end

  def touch_out(exit_station)
    @log.finish(exit_station)
    deduct(@log.fare)
  end

  def get_history
    @log.history
  end

private

  def deduct(amount)
    @balance -= amount
  end

end
