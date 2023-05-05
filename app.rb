require_relative 'task_repo'
require_relative 'tasks_controller'
require_relative 'router'

repo = TaskRepo.new
controller = TasksController.new(repo)
router = Router.new(controller)

router.run