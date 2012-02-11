require_relative '../lib/city'
require_relative '../lib/resources/field'
require_relative '../lib/resources/mountain'

london = City.new
london.resources << Mountain.new
london.resources << Field.new

resources = london.turn
puts "turn 1"
resources.print

london.resources << Field.new

resources = london.turn
puts "turn 2"
resources.print