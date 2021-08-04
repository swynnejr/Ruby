class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def attack(object)
        if object.class.ancestors.include?(Human)
            object.health -= 10
            true
        else
            false
        end
    end
end

class Wizard < Human
    # Do I need to attr_accessor again, or is it inherited by the < above?
    # Do I need to reinitialize attributes that are the same as Human?
    def initialize
        super
        @intelligence = 25
        @health = 50
    end
    def subclass_method
        attack
    end
    def heal
        @health += 10
    end
    def fireball(object)
        if object.class.ancestors.include?(Human)
            object.health -= 20
            true
        else
            false
        end
    end
end

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end
    def subclass_method
        attack
    end
    # Do I need to add self as a second parameter?
    def steal(object)
        attack(object)
        @health += 10
    end
    # Do I need to pass self into get away?
    def get_away()
        @health -= 10
        puts @health
    end
end

# ninja1 = Ninja.new
# ninja1.get_away





class Samaurai < Human
    @@count = 0
    def initialize
        super
        @health = 200
        @@count += 1
    end
    def subclass_method
        attack
    end
    def death_blow(object)
        object.health = 0
    end
    def meditate
        if @health < 200
            @health = 200
            true
        else
            false
        end
    end
    def how_many()
        @@count
        puts @@count
    end
end

# samaurai1 = Samaurai.new
# samaurai2 = Samaurai.new

# samaurai1.how_many

# Check SOLUTIONS
# class Human
#     attr_accessor :strength, :intelligence, :stealth, :health
#     def initialize
#       @strength = 3
#       @intelligence = 3
#       @stealth = 3
#       @health = 100
#     end

#     def attack(obj)
#       if obj.class.ancestors.include?(Human)
#         obj.health -= 10
#         true
#       else
#         false
#       end
#     end
# end

# ONLY NECCESSARY IF IN A DIFFERENT FILE
# require_relative "human"

# class Wizard < Human
#   def initialize
#     super
#     @health = 50
#     @intelligence = 25
#   end

#   def heal
#     @health += 10
#   end

#   def fireball(obj)
#     if obj.class.ancestors.include?(Human)
#       obj.health -= 20
#       true
#     else
#       false
#     end
#   end
# end

# ONLY NECCESSARY IF IN A DIFFERENT FILE
# require_relative "human"

# class Ninja < Human
#   def initialize
#     super
#     @stealh = 175
#   end

#   def steal(victim)
#     attack(victim)
#     @health += 10
#   end

#   def get_away
#     @health -= 15
#   end
# end

# ONLY NECCESSARY IF IN A DIFFERENT FILE
# require_relative "human"

# class Samurai < Human
#   @@count = 0

#   def initialize
#     super
#     @health = 200
#     @@count += 1
#   end

#   def death_blow
#     if obj.class.ancestors.include?(Human)
#       obj.health = 0
#       true
#     else
#       false
#     end
#   end

#   def meditate
#     @health = 200
#   end

#   def self.count
#     @@count
#   end
# end