
class Router
    def initialize(controller)
        @controller = controller
    end
    
    def run 
        stop = false

        until stop 
            puts "Please choose a option"
            puts "1 Add a task"
            puts "2 List tasks"
            puts "3 Mark task"
            puts "4 remove task"
            puts "5 to close app"
            
            choice = gets.chomp
            if choice == "1"
                @controller.add
            elsif choice == "2"
                @controller.list
            elsif choice == "3"
                @controller.mark
            elsif choice == "4"
                @controller.remove
            elsif choice == "5"
                stop = true
            end
        end
    end
end