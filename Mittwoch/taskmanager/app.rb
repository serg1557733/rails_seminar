# frozen_string_literal: true

require_relative 'task'
require_relative 'router'
require_relative 'tasks_controller'
require_relative 'task_repository'

repository = TaskRepository.new
controller = TasksController.new(repository)
router = Router.new(controller)

router.run
