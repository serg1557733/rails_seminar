require 'csv'

class MealsRepository
  def initialize(csv_file_path)
    @id = 1
    @csv_file_path = csv_file_path
    @meals = []
    load_csv
  end

  def all
    @meals
  end

  def create(meal)
    meal.id = @id
    @meals << meal
    save_csv
  end

  def find(id)
    @meals.find { |meal| meal.id == id }
  end

  private

  def load_csv
    CSV.read(@csv_file_path, headers: :first_row, header_converters: :symbol) do | row |
     @meals << Meal.new({id: row[:id].to_i, name: row[:name], price: row[:price].to_i})
    end
    @id = @meals.empty? ? 1 : @meals.last.id + 1
  end


  def save_csv
    CSV.open(@csv_file_path, "wb") do | row |
      @id = @meals.length + 1
      puts @id
      @meals.each {  |meal|
        @id = @meals.empty? ? 1 : @meals.last.id + 1
        row << [meal.id, meal.name, meal.price]
      }
    end

  end

end