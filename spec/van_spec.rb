require "van"

describe Van do
  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 10) }
  let(:station) { DockingStation.new }

  it "should accept a bike" do
    expect(van.bike_count).to eq(0)
    van.collect(bike)
    expect(van.bike_count).to eq(1)
  end

  it "should know when it's full" do
    expect(van).not_to be_full
    10.times { van.collect(bike) }
    expect(van).to be_full
  end

  it "should release a bike" do
    expect(van.bike_count).to eq(0)
    van.collect(bike)
    expect(van.bike_count).to eq(1)
    van.release(bike)
    expect(van.bike_count).to eq(0) 
  end

end