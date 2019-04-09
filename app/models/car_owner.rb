class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all owners
  def self.all
    @@all
  end

  # Get a list of all the cars that a specific owner has
  def cars_i_own
    Car.all.select { |car| car.owner == self }
  end

# Get a list of all the mechanics that a specific owner goes to
  def mechanics_i_use
    self.cars_i_own.map(&:mechanic)
  end

# Get the average amount of cars owned for all owners
  def self.average_cars_owned
    cars_owned = self.all.map(&:cars_i_own).length

    cars_owned.inject(0, :+).to_f / cars_owned.length.to_f
  end

end
