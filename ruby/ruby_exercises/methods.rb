class ParentClass
    def a_method
        puts 'b'
    end
end
class SomeClass < ParentClass # < means inherit
    def another_method
        puts 'a'
    end
end
instance = SomeClass.new
instance.another_method
instance.a_method
