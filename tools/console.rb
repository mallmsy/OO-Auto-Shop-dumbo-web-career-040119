require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joey = Mechanic.new("Joey", "clunker")
susan = Mechanic.new("Susan", "antique")
matt = Mechanic.new("Matt", "clunker")
madge = Mechanic.new("Madge", "exotic")

mallory = CarOwner.new("Mallory")
gino = CarOwner.new("Gino")
yoonmi = CarOwner.new("Yoonmi")

wrangler = Car.new("JEEP", "Wrangler", "exotic", joey, gino)
camry = Car.new("Toyota", "Camry", "clunker", madge, mallory)
firebird = Car.new("Pontiac", "Firebird", "antique", susan, mallory)
bronco = Car.new("Ford", "Bronco", "clunker", madge, gino)
fit = Car.new("Honda", "Fit", "antique", matt, yoonmi)

wrangler.expert_mechanics
madge.cars_i_service

CarOwner.average_cars_owned

binding.pry

puts "YEE-HAW!"
