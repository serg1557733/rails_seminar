require_relative 'router'
require_relative 'app/controllers/customers_controller'
require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meals_repository'
meals_repositories = MealsRepository.new("data/meals.csv")
meals_controller = MealsController.new(meals_repositories)
customers_controller = CustomersController.new()
router = Router.new(meals_controller, customers_controller)
router.run