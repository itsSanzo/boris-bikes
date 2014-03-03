require "bike.rb"

describe Bike do
	it "should not be broken after we create it" do
    bike = Bike.new
    expect(bike.broken?).to be_false
  end
end