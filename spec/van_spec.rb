require "van"

describe Van do
  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 10) }

  it "should know when it's full" do
    expect(van).not_to be_full
    10.times { van.dock(bike) }
    expect(van).to be_full
  end

  it "should accept a bike" do
    expect(van.bike_count).to eq(0)
    van.dock(bike)
    expect(van.bike_count).to eq(1)
  end

end