name = {"first_name" => "Chris", "last_name" => "Pak"}
nothing = {}

#.delete{key}
name.delete("first_name")
puts name

#.empty?
puts name.empty?
puts nothing.empty?

#.has_key?(key)
puts name.has_key?("first_name")
puts name.has_key?("last_name")

#.has_value?(value)
puts name.has_value?("Chris")
puts name.has_value?("Pak")
