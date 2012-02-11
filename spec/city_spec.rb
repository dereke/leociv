require_relative '../lib/city'

describe City do
  it "gets some food each turn" do
    london = City.new
    resources = london.turn
    resources.food.should == 1
  end

  it "gets some gold each turn"
  it "gets some production each turn"
  it "gets some trade each turn"
end