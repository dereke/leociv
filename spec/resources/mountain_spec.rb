require_relative '../../lib/resources/mountain'

describe Mountain do
  it "makes gold each turn" do
    mountain = Mountain.new
    mountain.gold.should == 10
  end
  it "makes production each turn" do
    mountain = Mountain.new
    mountain.production.should == 20
  end
end