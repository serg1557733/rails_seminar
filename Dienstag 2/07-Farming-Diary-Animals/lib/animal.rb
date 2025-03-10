class Animal
  def initialize
    @energy = 0
  end

  def talk
    "Hello!"
  end

  def feed!
    @energy +=1
  end
end