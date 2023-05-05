
class Task 
    attr_reader :description
    
    def initialize(description)
        @description = description
        @done = false
    end

    def mark_as_done!
        @done = true
    end

    def done? 
        return @done
    end
end