class Mammal
    attr_accessor :health
    def initialize
        @health = 150
    end
    def display_health
        puts @health
    end
end


# mammal1 = Mammal.new
# mammal1.display_health