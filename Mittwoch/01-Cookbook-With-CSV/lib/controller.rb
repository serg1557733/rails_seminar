#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display_list(recipes)
  end

  def add
    puts "Add you recipe name: "
    name = gets.chomp.to_s
    puts "Add your recipe description: "
    description = gets.chomp.to_s
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
    puts "Recipe added successfully"
  end

  def remove
     puts "Which recipe would you like to remove?"
     list
     puts "Enter the number of the recipe to remove: "
     index = gets.chomp.to_i - 1
     if index >= 0 && index < @cookbook.all.size
       @cookbook.destroy(index)
     end
     puts "Recipe removed successfully"
  end
end