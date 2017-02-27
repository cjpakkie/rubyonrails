require_relative "human"
class Samurai < Human
    @counter = 0
    class << self
        attr_accessor :counter
    end
    def initialize
        @health = 200
    end
    def death_blow(obj)
        attack(obj)
        obj.health = 0
    end
    def meditate
        @health = 200
    end
    def how_many
        puts "There are #{self.class.counter} samurai"
    end
end

genji = Samurai.new
genji.how_many
