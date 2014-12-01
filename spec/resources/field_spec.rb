require_relative '../../lib/resources/field'

describe Field do
  it "makes food each turn" do
    field = Field.new
    field.food.should == 4
  end
  it "makes trade each turn" do
    field = Field.new
    field.trade.should == 3
  end
end
