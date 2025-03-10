# frozen_string_literal: true

class Router
  def initialize(controller)
    @controller = controller # TasksController
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      break if dispatch?(action)
    end
  end

  private

  def print_actions
    puts 'What'
    puts '1 List'
    puts '2 Add'
    puts '3 Mark'
    puts '4 Delete'
    puts '5 Stop'
  end

  def dispatch?(action)
    case action
    when 1
      @controller.list
    when 2
      @controller.add
    when 3
      @controller.mark_as_done
    when 4
      @controller.remove
    when 5
      return true
    else
      puts 'Invalid action'
    end
    false
  end
end
