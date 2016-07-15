require_relative 'journey'

class JourneyLog

attr_reader :log

  def initialize
    @log = []
  end

  def start(entry_station)
    @current_journey = Journey.new(entry_station)
  end

  def finish(exit_station)
    @current_journey = Journey.new if @current_journey.nil?
    @current_journey.finish(exit_station)
  end

  def fare
    current_fare = @current_journey.fare
    log_journey
    current_fare
  end

  def touch_in_check
     @current_journey.nil? ? 0 : fare
  end

  def history
    @log.dup
  end

  private

  def log_journey
   @log << @current_journey
   @current_journey = nil
  end

end
