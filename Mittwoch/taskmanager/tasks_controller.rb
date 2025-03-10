# frozen_string_literal: true

require_relative 'tasks_view'

class TasksController
  def initialize(repository)
    @repository = repository # TaskRepository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def add
    add_task
  end

  def remove
    remove_task
  end

  def mark_as_done
    mark_task_as_done
  end

  private

  def add_task
    puts 'Add task'
    puts 'Description'
    task = Task.new(gets.chomp.to_s)
    @repository.add(task)
  end

  def remove_task
    puts 'Remove task'
    puts 'Index: '
    @repository.destroy(get_index)
  end

  def mark_task_as_done
    puts 'Remove task'
    puts 'Index: '
    @repository.mark_task_as_done(get_index)
  end

  def display_tasks
    tasks = @repository.all
    @view.display_list(tasks)
  end

  def get_index
    @view.ask_for_index
  end
end
