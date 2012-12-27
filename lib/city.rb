require_relative 'population'
class Resources
  attr_accessor :food, :gold, :production, :trade
  def initialize
    @gold = 0
    @food = 0
    @production = 0
    @trade = 0
  end

  def print
    puts "Gold: #{gold}"
    puts "Trade: #{trade}"
    puts "Food: #{food}"
    puts "Production: #{production}"
  end
end

class City
  attr_reader :population,   :resources, :gold_reserves

  def initialize
    @resources = []
    @gold_reserves = 0
    @population = Population.new self
  end

  def food_per_turn
    food = 0

    resources.each do |city_resource|
      food += city_resource.food if city_resource.respond_to? :food
    end

    food
  end
  
  def turn
    resource = Resources.new

    resources.each do |city_resource|
      resource.gold += city_resource.gold if city_resource.respond_to? :gold
      resource.food += city_resource.food if city_resource.respond_to? :food
      resource.production += city_resource.production if city_resource.respond_to? :production
      resource.trade += city_resource.trade if city_resource.respond_to? :trade
    end

    @gold_reserves += resource.gold

    @population.turn
    resource
  end
end