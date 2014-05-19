require "van"

describe Van do
  let(:van) { Van.new }
  let(:bike) { Bike.new }

  it "should accept a bike" do
    expect(van.bike_count).to eq(0)
    van.dock(bike)
    expect(van.bike_count).to eq(1)
  end

end