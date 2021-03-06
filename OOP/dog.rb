require_relative 'mammal'

class Dog < Mammal
    def initialize
        super
    end
    def pet
        @health += 5
    end
    def walk
        @health -= 1
    end
    def run
        @health -= 10
    end
    def subclass_method
        display_health
    end
end

dog1 = Dog.new
dog1.walk
dog1.walk
dog1.walk
dog1.run
dog1.run
dog1.pet
dog1.display_health

# CHECK SOLUTIONS says IF YOU RETURN SELF YOU CAN CHAIN
# require_relative "mammal"

# class Dog < Mammal
#   def pet
#     @health +=5
#     self
#   end

#   def walk
#     @health -=1
#     self
#   end
  
#   def run
#     @health -=10
#     self
#   end
# end

# d = Dog.new
# d.display_health
# d.walk.walk.walk.run.run.pet.display_health