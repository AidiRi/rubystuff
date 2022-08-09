# sets a var of a string, naming four values: first, second, third, fourth
# to format strings: use #{}
# BUT when applying same format to multiple values: use %{}
# QUESTION: more examples of when to use #{} vs %{}?
formatter = "%{first} %{second} %{third} %{fourth}"

# printing the formatter string, setting each name with values 1, 2, 3, 4 respectively
puts formatter % {first: 1, second: 2, third: 3, fourth:4}
# printing formatter string, with values one, two, three, four, respectively
puts formatter % {first: "one", second: "two", third:"three", fourth: "four"}
# printing, with values being keywords true or false, printing values simply as true or false
puts formatter % {first: true, second: false, third: true, fourth: false}
# printing, each value is set to formatter, so printing the full formatter string with value arguments four times 
puts formatter % {first: formatter, second: formatter, third:formatter, fourth: formatter}

# printing formatter, with each line having single name and value, same as above, but a little easier to read
puts formatter %
	first: "I had this thing.",
	second: "That you could type up right.",
	third: "But it didn't sing.",
	fourth: "So I said goodnight."
}