require_relative 'mammal'

class Lion < Mammal
    def initialize
        @health = 170
    end
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_humans
        @health += 20
        self
    end
    def subclass_method
        display_health
        puts "I am lion. Hear me roar."
    end
end

lion = Lion.new
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health