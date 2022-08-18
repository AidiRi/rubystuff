print "Give me a number:"
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number:"
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me a third number:"
# to_f => to float/decimal
third = gets.chomp.to_f

puts third

print "Give me a number and I'll return the tithe:"
money = gets.chomp.to_f
money = (money * 0.10)
rounded = money.round(2)

finalResponse =	"Your tithe is ....#{rounded}!"

if money === rounded
	print finalResponse
else 
	puts "The tithe is #{money}"
	print "Wait. That's messy. Let me try again?"
	
	response = gets.chomp

	puts "*#{response.empty? ? '...' : response}*  ...Um. Right!"
	print finalResponse

end




# money = money.ceil(2)