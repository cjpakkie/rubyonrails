x = (1..10)
y = ('a'..'z')

#should be true
puts "3 is " +x.member?(3).to_s
#should be false
puts "29 is " + x.member?(29).to_s
#true
puts "z is " + y.member?("z").to_s

#.member? and #.include? are the same

puts "for variable x, " + x.last.to_s + " is the last number of the range 1-10"
puts "for variable y " + y.last.to_s + " is the last letter of the range a-z"

puts "for variable x, " + x.max.to_s + " is the max number of the range 1-10"
puts "for variable y " + y.max.to_s + " is the last letter of the range a-z"

puts "for variable x, " + x.min.to_s + " is the min number of the range 1-10"
puts "for variable y " + y.min.to_s + " is the first letter of the range a-z"
