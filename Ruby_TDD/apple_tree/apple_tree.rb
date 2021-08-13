class AppleTree
    attr_accessor :age
    attr_reader :height, :apple_count
    def initialize
        @age = 1
        @height = 5
        @apple_count = 0
    end
    def year_gone_by
        @height *= 1.1
        @age += 1
        if @age < 3
            @apple_count = 0
        else
            @apple_count += 2
        end
    end
    def pick_apples
        @apple_count = 0
    end
end

