# frozen_string_literal: true

class TasksView
  def initialize
  end

  def display_list(tasks)
    tasks.each_with_index do |task, idx|
      task_done = task.done? ? "[X]" : "[ ]"
      puts "#{task_done} -- #{idx + 1} - #{task.description}"
    end
  end

  def ask_for_index
    puts "Enter task index: "
    gets.chomp.to_i - 1
  end
end
