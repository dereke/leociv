require_relative '../lib/city'
require_relative '../lib/resources/field'
require_relative '../lib/resources/mountain'

london = City.new
london.resources << Mountain.new
london.resources << Field.new

resources = london.turn
puts "turn 1"
resources.print
puts "You have #{london.gold_reserves} gold"

london.resources << Field.new

resources = london.turn
puts "turn 2"
resources.print
puts "You have #{london.gold_reserves} gold"