# Destructuring using cl (ex: first, second = ARGV),
# doesn't work with one arg.
# ARGV = an array, values passed in cl 
user_name = ARGV.first
title = ARGV.last
prompt = "--- "

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, #{title} #{user_name}. 
So you said #{likes} about liking me. 
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""

# '$ exit' will end script early