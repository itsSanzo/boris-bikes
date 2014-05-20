require "garage"

describe Garage do
  
  it "should accept broken bikes" do
  	garage = Garage.new
  	bike = Bike.new
    expect(garage.bike_count).to eq(0)
    garage.accept(bike)
    expect(garage.bike_count).to eq(1)
  end 

	
end