MENU = {
  burger: 500,
  Hamburger:	250,
  cheese_burger:	300,
  veggie_burger:	540,
  vegan_burger:	350,
  salad:	15,
  iced_tea:	70,
  lemonade:	90,
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  MENU[burger] + MENU[side] + MENU[beverage]
end


p poor_calories_counter(:cheese_burger,  :salad, :lemonade)