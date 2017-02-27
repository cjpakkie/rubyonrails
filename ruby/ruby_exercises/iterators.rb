#.any?{|obj|block}
puts ['dog','tree','football'].any? { |word|word.length >=3 }

#each_char { |chr|  }
puts ['dog','cat','football'].each { |word|print word, "--"  }.to_s

#.collect and .map are the same
puts (1..4).map { |i|i*i  }.to_s
puts (1..4).collect { "cat"  }.to_s

#.detect/.find
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }

#.find_all or .select

puts (1..10).select { |i| i % 3 ==0  }.to_s

#.reject
puts (1..10).reject { |i| i % 3 ==0  }.to_s

#.upto(limit)
5.upto(10) {|i| print i, " "}
