require_relative 'animal'
class Chicken < Animal
  attr_reader :eggs
  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def talk
     "cluck cluck"  if @gender == 'female'
     return "cock-a-doodle-doo" if @gender=="male"
  end

  def feed!
    super
    @eggs += 2 if @gender == 'female'
  end

end