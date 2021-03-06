require_relative '../lib/city'

describe City do
  context "turn" do
    before do
      mountain = mock('Mountain')
      mountain.stub(:food).and_return(1)
      mountain.stub(:gold).and_return(2)
      mountain.stub(:production).and_return(3)
      mountain.stub(:trade).and_return(4)

      london = City.new
      london.resources << mountain
      london.resources << mountain

      @resources = london.turn
    end
    it "gets some food each turn" do
      @resources.food.should == 2
    end

    it "gets some gold each turn" do
      @resources.gold.should == 4
    end

    it "gets some production each turn" do
      @resources.production.should == 6
    end

    it "gets some trade each turn" do
      @resources.trade.should == 8
    end
  end

  context "gold_reserves" do
    it "adds gold each turn" do
      mountain = mock('Mountain')
      mountain.stub(:gold).and_return(2)

      london = City.new
      london.resources << mountain

      london.turn
      london.gold_reserves.should == 2

      london.turn
      london.gold_reserves.should == 4
    end
  end

  context "food_per_turn" do
    it "calculates food available for turn" do
      field = mock('Field')
      field.stub(:food).and_return(10)

      city = City.new
      city.resources << field

      city.food_per_turn.should == 10
    end
  end
end