require_relative '../lib/population'

describe Population do
  context "can_support" do
    it "needs 1 food to support 10 people" do
      city = mock('City')
      city.stub(:food_per_turn).and_return(1)

      population = Population.new city
      population.can_support.should == 10
    end
  end

  context "current" do
    it "gives you 10 population to start with" do
      city = mock('City')

      population = Population.new city
      population.current.should == 10

    end

    it "maintains the current population" do
      city = mock('City')
      city.stub(:food_per_turn).and_return(1)

      population = Population.new city
      population.turn
      population.current.should == 10
    end

    context "population growth" do
      it "has more food than required for 10 turns" do
        city = mock('City')
        city.stub(:food_per_turn).and_return(1)

        population = Population.new city
        population.turn
        population.current.should == 10

        city.stub(:food_per_turn).and_return(2)

        11.times.each do
          population.turn
        end
        population.current.should == 20
      end
    end
  end
end