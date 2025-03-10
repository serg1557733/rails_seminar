class CEO
  def initialize(name)
    @name =name
  end
end


class OrangeTree
  attr_reader :age, :height, :fruits
  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @death = false
    @ceo = Ceo.new("Tim")
  end

  def dead?
    if @age > 50
      @death = true
    else
      @death = false
    end
    @death
  end

  def one_year_passes!
    @height += 1 unless @age >= 10 && @age <= 20 && !dead?
    if @age > 6 && @age <= 10 && !dead?
      @fruits = 100
    elsif 10 < @age && @age <= 15 && !dead?
      @fruits += 200
    end
    @age += 1 unless dead?
    @fruits = 0
  end

end
