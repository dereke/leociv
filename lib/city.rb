class Resources
  attr_accessor :food, :gold, :production, :trade
  def initialize
    @gold = 0
    @food = 0
    @production = 0
    @trade = 0
  end
end

class City
  attr_reader :resources

  def initialize
    @resources = []
  end
  
  def turn
    resource = Resources.new

    resources.each do |city_resource|
      resource.gold += city_resource.gold if city_resource.respond_to? :gold
      resource.food += city_resource.food if city_resource.respond_to? :food
      resource.production += city_resource.production if city_resource.respond_to? :production
      resource.trade += city_resource.trade if city_resource.respond_to? :trade
    end

    resource
  end
end