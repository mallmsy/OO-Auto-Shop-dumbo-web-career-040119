class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

# Get a list of all mechanics
def self.all
  @@all
end

  # Get a list of all cars that a mechanic services
  def cars_i_service
    Car.all.select do |car|
      car.mechanic == self
    end
  end

# Get a list of all the car owners that go to a specific mechanic
  def my_car_owners
    self.cars_i_service.map(&:owner)
  end

# Get a list of the names of all car owners who go to a specific mechanic
  def my_car_owners_names
    self.my_car_owners.map(&:name)
  end

end
