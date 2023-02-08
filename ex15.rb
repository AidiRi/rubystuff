# Assigning 'filename' to the first argument passed through on command line
filename = ARGV.first

# print "Filename:"
# filename = $stdin.gets.chomp

# Creates a new File object, returns the contents of the file at 
# path passed through 'filename'.
txt = open(filename)

# Puts string with filename and adds new line.
puts "Here's your file #{filename}:"
# Prints the returned string read from txt stream.
# No argument added to .read, so returns new string of entire contexts.
print txt.read


# Prints string with no new line.
print "Type the filename again: "
# Saves string typed into CLI as file_again, with spaces trimmed
file_again = $stdin.gets.chomp

# Uses string from file_again as the path to the file to open, 
# creates new File object returning contents of file.
txt_again = open(file_again)

# Returns a string reading from opened File object txt_again,
# returning full length
print txt_again.read

txt.close()
txt_again.close()