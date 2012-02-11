require_relative '../../lib/resources/field'

describe Field do
  it "makes food each turn" do
    field = Field.new
    field.food.should == 40
  end
  it "makes trade each turn" do
    field = Field.new
    field.trade.should == 39
  end
end