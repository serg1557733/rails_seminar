# frozen_string_literal: true

class TaskRepository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def add(task)
    @tasks.push(task)
  end

  def destroy(index)
    @tasks.delete_at(index)
  end


  def mark_task_as_done(index)
    @tasks[index].mark_as_done!
  end
end
