require "garage"
require "bike"

describe Garage do

	let(:bike) { Bike.new }
	let(:garage) { Garage.new }
  
  it "should accept broken bikes" do
    expect(garage.bike_count).to eq(0)
    garage.accept(bike)
    expect(garage.bike_count).to eq(1)
  end 

  it "should release a bike to the van when fixed" do
    garage.accept(bike)
    bike.fix
    garage.release(bike)
    expect(garage.bike_count).to eq(0)
  end

	
end