# def test
#     puts "you are in the method"
#     yield
#     puts "you are again back in the method"
#     yield
# end
# test { puts "you are in the block"}

def test
    yield(5)
    puts "You are in the method test"
    yield(100)
end
test { |i| puts "You are in the block #{i}"}

def square(num)
    puts "num is "
    puts "yield(num) has a value of #{yield(num)}"
end
square(5) { |i| i*i}
