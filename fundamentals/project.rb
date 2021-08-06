class Project
    attr_reader :name, :description
    def initialize(name, description)
        @name = name
        @description = description
    end
    def name_call
        puts "#{name}"
    end
    def elevator_pitch
        puts "This is #{name}, and I #{description}."
    end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name_call # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"