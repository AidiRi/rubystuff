filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, then hit RETURN."

# - Pauses program to wait for input, without saving anything
$stdin.gets

puts "Opening the file..."
# - Opens file with 'w' as mode option that only allows writing, not reading
# target = open(filename, 'w')

# - open() method with mode option 'w+' allows reading, still with initial truncate
target = open(filename, 'w+')

puts "Truncating the file. Goodbye!"
# - Deletes contents of file, to be at most 0 bytes long
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp 
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# - Writes line1 to the target file
target.write(line1)
# - Writes a line feed, moves one line foward
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "Now lets read what we've written:"
# - Method seek() will move the 'cursor' (position) to the integer given, the byte offset 
# - Position currently at the end of the last write() 
# target.seek(0)

# - rewind() same as seek(0), moves position to beginning of the file
target.rewind()
print target.read()

puts "And finally, we close it."
target.close()