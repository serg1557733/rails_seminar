class AppleFActory
  @@factory_count = 0
  attr_reader :model, :color

  def initialize(attr = [])
    @model = attr[:model]
    @color = attr[:color]
    @programs = []
    @circut_on = false
    produce()

  end

  def turn_on
    @circut_on = true
  end

  def self.ceo
    puts "Tim Cook"
  end

  def produce
    @@factory_count += 1
  end

  def circut_on?
    @circut_on
  end

  def install_program(new_programe)
    @programs << new_programe
  end
  private

  def power
    puts "Powering on the #{@model} in #{@color} color."
  end
end

macbook_pro = AppleFActory.new(model: "MAcbook Pro 4", color: "Space Gray")

macbook_pro.turn_on
macbook_pro.install_program("YouTube")
AppleFActory.ceo