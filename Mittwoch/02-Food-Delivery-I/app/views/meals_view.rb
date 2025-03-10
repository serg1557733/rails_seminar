class MealsView

  def ask_for_meal_name
    puts "What is the name of the meal?"
    gets.chomp.to_s
  end

  def ask_for_meal_price
    puts "What is the price of the meal?"
    gets.chomp.to_f
  end
end