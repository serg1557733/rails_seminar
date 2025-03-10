class Car

  attr_reader :brand
  attr_writer :kilometers
  attr_accessor :model
  def initialize(model, brand, kilometers)
    @model = model
    @brand = brand
    @kilometers = kilometers
  end

  def start
    puts "Auto startet...."
  end

  def brand
     @brand
  end

  def model
    @model
  end

  def kilometrs(new_km)
    @kilometers = new_km
  end
end



vw = Car.new("VW", "Volkswagen", 67)
vw.kilometers = 5677
vw.start

p vw