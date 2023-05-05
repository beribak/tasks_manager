require_relative 'task'
class TaskRepo 
    
    def initialize
        @tasks = []
    end

    # READ
    def all
        @tasks
    end

    # CREATE
    def create(task)  
        @tasks << task
    end 
   
    # DELETE
    def destroy(index)
        @tasks.delete_at(index)
    end

    # UPDATE
    def find(index)
        @tasks[index]
    end

end