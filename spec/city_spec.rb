require_relative '../lib/city'

describe City do
  context "turn" do
    before do
      london = City.new
      @resources = london.turn
    end
    it "gets some food each turn" do
      @resources.food.should == 1
    end

    it "gets some gold each turn" do
      @resources.gold.should == 2
    end

    it "gets some production each turn" do
      @resources.production.should == 3
    end

    it "gets some trade each turn" do
      @resources.trade.should == 4
    end
  end
end