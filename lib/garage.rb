class Garage

  DEFAULT_CAPACITY = 100

	def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def bike_count
    @bikes.count
  end

  def accept(bike)
    raise "Garage is full" if full?
    @bikes << bike
  end

  def release(bike)
    @bikes.delete(bike)
  end

  def full?
    bike_count == @capacity
  end

end