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
        @strength = 3
        @intelligence = 25
        @stealth = 3
        @health = 50
    end
    def subclass_method
        attack
    end
    def heal(object)
        if object.class.ancestors.include?(Human)
            object.health += 10
            true
        else
            false
        end
    end
    def fireball(object)
        object.health -= 20
    end

end

class Ninja < Human
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 175
        @health = 100
    end
    def subclass_method
        attack
    end
    # Do I need to add self as a second parameter?
    def steal(object)
        attack(object)
        Self.health += 10
    end
    # Do I need to pass self into get away?
    def get_away()
        Self.health -= 10
    end
end

class Samaurai < Human
    @@count = 0
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 200
        @@count += 1
    end
    def subclass_method
        attack
    end
    def death_blow(object)
        object.health = 0
    end
    def meditate(Self)
        if Self.health < 200
            Self.health = 200
            true
        else
            false
        end
    end
    def how_many()
        @@count
        puts Samaurai.count
    end
end

