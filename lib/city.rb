class Resources
  attr_accessor :food, :gold, :production, :trade
end

class City
  def turn
    resources = Resources.new
    resources.food = 1
    resources.gold = 2
    resources.production = 3
    resources.trade = 4
    resources
  end
end