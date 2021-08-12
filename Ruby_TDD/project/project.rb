class Project
    attr_accessor :name, :description, :owner, :tasks
    def initialize(name, description, owner, [tasks])
        @name = name
        @description = description
        @owner = owner
        @tasks = [tasks]
    end
    def name_call
        puts "#{name}"
    end
    def elevator_pitch
        puts "This is #{name}, and I #{description}."
    end
    def task_list
        return [tasks]
    end
    def add_task
        
    end
end
project1 = Project.new("Project 1", "Description 1", "John Doe")
puts project1.name_call # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"