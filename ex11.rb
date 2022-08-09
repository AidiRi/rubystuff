# print: prints string without a \n printed; prompt starts right after
print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
# include \n or \r in arg when needed
weight = gets.chomp("lbs\n")

puts "So, you're #{age} old, #{height} tall and #{weight}lbs heavy."