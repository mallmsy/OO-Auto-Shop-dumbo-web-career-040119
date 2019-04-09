class Car

  attr_reader :make, :model, :classification, :mechanic, :owner

  @@all = []

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.car_classifications
    self.all.map(&:classification).uniq
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def expert_mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification }
  end

end
