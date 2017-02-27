# class ParentClass
#     def a_method
#         puts 'b'
#     end
# end
# class SomeClass < ParentClass # < means inherit
#     def another_method
#         puts 'a'
#     end
# end
# instance = SomeClass.new
# instance.another_method
# instance.a_method

#example

class Mammal
    def initialize
        puts 'I am alive'
    end
    def breathe
        puts 'inhale and exhale'
    end
end

class Cat < Mammal #inherits from Mammal class
    def jerk
        puts 'scratching you...'
        self
    end
    def speak
        puts "Meow"
        self
    end
    def who_am_i
        puts self
        self
    end
end
chloe = Cat.new #creates a new class Cat, 'I am alive! should print'
chloe.jerk #prints 'scratching you '
chloe.speak #prints 'meow'
chloe.breathe #can access the Mammal method as well
puts
chloe.who_am_i #prints cat object
puts
chloe.speak.who_am_i.jerk

#return self and self do the same thing
