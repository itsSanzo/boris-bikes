require "garage"
require "bike"

describe Garage do

	let(:bike) { Bike.new }
	let(:garage) { Garage.new(:capacity => 100) }

  def fill_garage(garage)
    100.times { garage.accept(bike) }
  end
  
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

  it "should know when it's full" do
    expect(garage).not_to be_full
    fill_garage(garage)
    expect(garage).to be_full
  end

  it "should not accept a bike if it's full" do
    fill_garage(garage)
    expect(lambda { garage.accept(bike) }).to raise_error(RuntimeError)
  end

	
end