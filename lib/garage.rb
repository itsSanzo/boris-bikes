class Garage

	def initialize
		@bikes = []
	end

	def bike_count
    @bikes.count
  end

  def accept(bike)
    @bikes << bike
  end

end