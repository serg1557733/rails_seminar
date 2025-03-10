require_relative '../models/meal'
require_relative '../views/meals_view'

class MealsController
  def initialize(meals_repository)
    @meals_repository = meals_repository
    @view = MealsView.new
  end


  def add
    name = @view.ask_for_meal_name
    price = @view.ask_for_meal_price
    meal = Meal.new(name: name, price: price)
    @meals_repository.create(meal)
  end

  def all
    @meals_repository.all
  end
end