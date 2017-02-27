x = [3,5,1,2,7,9,8,13,25,32]
puts x.reduce(:+)
puts
x.find_all { |i| puts "Greater than 10: " + i.to_s if i > 10  }
puts
name = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher',]
puts name.shuffle!.find_all { |i| puts "Name longer than 5 characters: " + i if i.length > 5  }
puts
alpha = Array('a'..'z')
shuffled = alpha.shuffle
puts "last letter of shuffled array: " + shuffled.last
puts "First letter of shuffled array: " + shuffled.first
puts ["a","e","i","o","u"].include?(shuffled.first) ? shuffled.first + " is a vowel" : shuffled.first + " is not a vowel"
puts
ran_array = []
10.times{ ran_array.push(rand(50..100)) }
puts "Sorted low to high: " + ran_array.to_s
puts

puts ran_array.sort.to_s

puts

puts "Max: " + ran_array.max.to_s
puts "Min: " + ran_array.min.to_s
puts
5.times{ print (65+rand(26)).chr}

puts

new_array = []
10.times {new_array.push((1..5).map{(65+rand(26)).chr}.join)}
puts new_array.to_s
