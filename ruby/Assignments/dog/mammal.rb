class Mammal
    attr_accessor :health
    def initialize
        @health = 170
        self
    end
    def display_health
        puts "Health: %d" % @health
        self
    end
end
