class Resources
  attr_accessor :food
end

class City
  def turn
    resources = Resources.new
    resources.food = 1
    resources
  end
end