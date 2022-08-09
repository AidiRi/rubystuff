# sets days variable to a string 
days = "Mon Tue Wed Thu Fri Sat Sun"
# sets months var to a string, with a new-line-escape after each month
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# prints the string with the days string replacing the days variable interpolated
puts "Here are the days: #{days}"
# prints string with months var, with a new line printed after each month
puts "Here are the months: #{months}"

# prints the text inside the %q bracket as it's typed, with new lines after for each line written on.
puts %q{
	There's something going on here.
	With this weird quote
	We'll be able to type as much as we like.
	Even 4 lines if we want, or 5, or 6.
}