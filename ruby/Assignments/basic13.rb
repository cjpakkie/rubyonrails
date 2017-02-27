#print 1-255
(1..255).each { |i| puts i}

#print odd numbers between 1-255
puts (1..255).select { |num| num.odd? }

#print sum 0-255
sum = 0
(1..255).each { |i| puts "New number: #{i} Sum: #{sum+=i}"}

#Given an array X, say [1,3,5,7,9,13], write a program that would iterate through
#each member of the array and print each value on the screen.
#Being able to loop through each member of the array is extremely important.
x = [1,3,5,7,9,13]
x.each{ |i| puts i, "-"}

#Write a program (sets of instructions) that takes any array and prints the
#maximum value in the array. Your program should also work with a given array
#that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers,
# negative numbers and zero.
puts "Max: " + x.max.to_s
negative = [-3,-5,-7]
puts "Negative: " + negative.max.to_s
mix = [1,9,0,-3,-12]
puts "Mix: " + mix.max.to_s

# Write a program that takes an array, and prints the AVERAGE of the values
# in the array. For example for an array [2, 10, 3], your program should print
# an average of 5. Again, make sure you come up with a simple base case and
# write instructions to solve that base case first, then test your instructions
# for other complicated cases. You can use a count function with this assignment.
average = [1,5,9]
puts "Average: " + (average.reduce(:+) / average.length).to_s

# Array with Odd Numbers
# Write a program that creates an array 'Y' that contains all the odd numbers
#between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
puts (1..255).select(&:odd?).to_s

# Greater Than y
# Write a program that takes an array and returns the number of values in that array
# whose value is greater than a given value y.
# For example if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2
# (since there are two values in the array that are greater than 3).
array = [1,3,5,7]
y = 3
count = 0
array.each { |i| count +=1 if i > 3}
puts count

# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions)
# that multiplies each value in the array by itself.
# When the program is done, the array x should have values that have been squared,
#say [1, 25, 100, 4].
x = [1,5,10,-2]
x.each { |i| puts i * i  }

# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any
#negative number with the value of 0. When the program is done,
#x should have no negative values, say [1, 5, 10, 0].
x = [1,5,10,-2]
x.each { |x| if x>0 then puts x else puts 0 end }

# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the
# maximum number in the array, the minimum value in the array,
# and the average of the values in the array.
x = [1,5,10,-2]
max = x[0]
min = x[0]
x.each { |x| max = x if x>max  }
x.each { |x| max = x if x<min  }
puts "Max: #{max}"
puts "Min: #{min}"
puts "Average: #{x.reduce(:+)/x.size.to_f}"

# Shifting the values in the array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number
#by one to the front. For example, when the program is done, an x of
#[1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
x = [1, 5, 10, 7, -2]
count = 0
x.each { x[count] = x[count+=1] }
x[x.size-1] = 0
puts x.to_s

# Number to string
# Write a program that takes an array of numbers and replaces any negative number
#with the string 'Dojo'. For example if array x is initially [-1, -3, 2],
# after your program is done that array should be['Dojo', 'Dojo', 2].
x = [-1, -3, 2]
x.each { |x| if x>0 then puts x else puts 'Dojo' end }
