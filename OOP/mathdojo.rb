class MathDojo(num1, num2)
    def initialize
        @num1 = num1
        @num2 = num2
    end
    def add
        sum = num1 + num2
        puts sum
    end
    def subtract
        minus = num1 - num2
        puts minus
    end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15