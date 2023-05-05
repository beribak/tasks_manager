require_relative 'task'
require_relative 'task_view'

class TasksController 
    def initialize(repo)
        @repo = repo
        @view = TaskView.new
    end

    def list 
        # 1 get all the tasks repo
        tasks = @repo.all
        # 2 display tasks view
        @view.display_tasks(tasks)
    end

    def add 
        # 1 ask user for description of task
        puts "Please describe the task"
        desc = gets.chomp
        # 2 create the task
            # a call model
        task = Task.new(desc)
            # b call repo
        @repo.create(task)

    end

    def mark 
        puts "What task do you want to mark?"
        index = gets.chomp.to_i - 1

        # get task
        task = @repo.find(index)
        task.mark_as_done!
    end

    def remove
        puts "What task do you want to remove?"
        index = gets.chomp.to_i - 1
        @repo.destroy(index)
    end

end