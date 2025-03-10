class View
  def display_list(recipes)
    recipes.each { |recipe|
      puts "=================================="
      puts "Recipe: #{recipe.name}"
      puts "Recipe Description: #{recipe.description}"
      puts "=================================="
    }
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Add a new recipe"
    puts "3 - Remove a recipe"
    puts "4 - Stop and exit the program"
  end
end