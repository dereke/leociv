class Population
  def initialize(city)
    @city = city
    @last_food_per_turn = 0
    @previous_food_level = 0
    @turns_with_excess_food = 0
  end

  DEFAULT_POPULATION = 10

  def current
    @current ||= DEFAULT_POPULATION
    @current
  end

  def turn
    if can_support > current
      @turns_with_excess_food += 1
    end
    @last_food_per_turn = @city.food_per_turn

    if @turns_with_excess_food > 10
      new_population = @current + (@current * 0.3).round
      if (new_population > can_support)
        @current = can_support
      else
        @current = new_population
      end

      @turns_with_excess_food = 0
    end
  end

  def can_support
    @city.food_per_turn * 10
  end
end
