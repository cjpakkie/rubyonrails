require_relative "human"
class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25

    end
    def heal
        return @health += 10
        self
    end
    def fireball(obj)
        attack(obj)
        obj.health -= 20
    end
end

ow = Human.new
hello = Wizard.new
# hello.attack(ow)
puts ow.health
puts hello.health
