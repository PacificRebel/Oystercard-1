# frozen_string_literal: true

class Oystercard
  attr_accessor :balance, :entry_station, :exit_station

  MAX_BALANCE = 90
  MIN_FARE = 1 # min_fare would be equivalent to min_balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "Maximum balance is #{MAX_BALANCE}." if over_maximum?(amount)

    self.balance += amount
  end

  def touch_in(entry_station)
    raise 'Insufficient funds to travel.' if insufficient_balance?
    @entry_station = entry_station

    in_journey?
  end

  def touch_out(exit_station)
    deduct(MIN_FARE)
    @entry_station = nil
    @exit_station = exit_station
    !in_journey?
  end

  def in_journey?
    return true if entry_station
    false
  end

  private

  def deduct(amount)
    self.balance -= amount
  end

  def insufficient_balance?
    self.balance < MIN_FARE
  end

  def over_maximum?(amount)
    self.balance + amount > MAX_BALANCE
  end
end

# new method for record_journey
# create hash of arrays, and each array is
# entry_station and exit_station. record_journey
# pushes this combo (array) into the hash

# step 11 - why is there a double at that
# point already?
