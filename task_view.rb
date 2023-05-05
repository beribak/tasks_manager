
class TaskView 

    def display_tasks(tasks) 
        p "/"
        p "/"
        p "/"
        p "/"
        
        tasks.each_with_index do |task, index|
            # done = task.done? ? "[x]" : "[ ]"
            if task.done?
                done = "[x]"
            else
                done = "[ ]"
            end

            puts "#{index + 1} -- #{task.description} -- #{done}"
        end 
    end
end