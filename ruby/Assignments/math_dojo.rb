class MathDojo
    attr_accessor :answer

    def initialize
        @answer = 0
    end

    def add(*arg)
        if arg.class == Array
            @answer += arg.flatten.reduce(:+)
        else
            @answer += arg
        end
        self
    end

    def subtract(*arg)
        if arg.class == Array
            @answer -= arg.flatten.reduce(:+)
        else
            @answer -= arg
        end
        self
    end
end

puts MathDojo.new.add(2).add(2,5).subtract(3,2).answer
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).answer
