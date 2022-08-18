# unpacks ARGV
first, second = ARGV

puts "Your first variable is: '#{first}'"
puts "Your second variable is: '#{second}'"
# puts "Your third variable is: '#{third}'"

print "And what's your third variable?: "
third = $stdin.gets.chomp

 puts "Your third variable is: '#{third}'"

# can pass empty string, as long as it's in " "
# args come as strings