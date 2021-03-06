class DockingStation

  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  # def capacity
  #   @capacity
  # end

  # def capacity=(capacity)
  #   @capacity = capacity
  # end

  def initialize capacity
    @capacity = capacity
  end

  def initialize
    @bikes = []
  end

  def dock bike
    fail 'Station Full' if full?
    @bikes << bike
    nil
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end


  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end