class Van

  DEFAULT_CAPACITY = 10

	def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end
  
  def bike_count
    @bikes.count
  end

  def dock(bike)
    @bikes << bike
  end

  def full?
    bike_count == @capacity
  end

  def fill_van

  end

end