class Oystercard
  MAX_LIMIT = 90
  attr_reader :balance

  def initialize
     @balance = 0
  end

  def top_up(amount)
  fail "Maximum balance of #{MAX_LIMIT} exceeded" if @balance + amount > MAX_LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

 def touch_in
   true
 end
end
