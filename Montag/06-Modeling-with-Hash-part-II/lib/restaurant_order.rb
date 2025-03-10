DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

MENU = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

def calories_counter(orders)
  sum = 0
  puts "Calculating calories..."
  orders.map do |order|
    if MENU[order]
      s = 0
      MENU[order].map { |el| puts  s += DISHES_CALORIES[el]}
      sum += s
    elsif DISHES_CALORIES[order]
      sum += DISHES_CALORIES[order]
    end
  end
  sum
end


orders = ["Sweet Potatoes", "Lemonade", "Vegan menu", "Veggie Combo"]

puts calories_counter(orders)
