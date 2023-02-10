filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, then hit RETURN."

# - Pauses program to wait for input, without saving anything
$stdin.gets

puts "Opening the file..."
# - open() method with mode option 'w+' allows reading, still with initial truncate
target = open(filename, 'w+')

puts "Truncating the file. Goodbye!"
# - Initial truncate after open() with mode option 'w' means target.truncate(0) is redundant

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp 
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")

$stdin.gets

puts "Now lets read what we've written:"
# - Method seek() will move the 'cursor' (position) to the integer given, the byte offset 
# - Position currently at the end of the last write() 
# target.seek(0)

# - rewind() same as seek(0), moves position to beginning of the file
target.rewind()
print target.read()

puts "And finally, we close it."
target.close()