tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."
complex_cat = "I'm a \n\x23cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies 
\t* Catnip\n\t* Grass
\vtabby cat
"""
#  blocks with ''': good for string block with multiple "" quotes?;
# don't need to escape each time
# won't allow \t\n type escapes
fatter_cat = '''
And then he said "fishies!"
	#{fatter_cat} cat\'s fishies
'''
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts fatter_cat
puts complex_cat