class Router
  def initialize(mils_controller, customers_controller)
    @mils_controller = mils_controller
    @customers_controller = customers_controller
    @running = true
  end


  def run
    while @running do
      puts "Running ..."
      print_actions
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

  def print_actions
    puts "1. List all meals"
    puts "2. Add a meal"
    puts "3. List all customers"
    puts "4. Add customer"
    puts "5. Exit"
  end

  def route_action(action)
    case action
    when 1
      @mils_controller.all
    when 2
      @mils_controller.add
    when 3
      @customers_controller.all
    when 4
      @customers_controller.add
    when 5
      @running = false
    end
  end
end