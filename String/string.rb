# Ruby string object holds and manipulates an arbitary sequence of bytes, typically representing characters.
# They are created using String::new or as literals.

# Quotes 

# Ruby string literals are enclosed within single and double quotes.

# example 

puts 'Hello Every one'
puts "Hello EVERY ONE"


#Accessing string element 
# you can access Ruby elements in different parts with the help of square brackets[].
# Within square brackets write the index or string


msg = "This tutorial is form javaTPoint"

puts msg["javaTPoint"]

puts msg["tutorial"]

puts msg[0]

puts msg[0,2]

puts msg[0..19]

puts msg[0, msg.length]

puts msg[-3]



# myultilinre string 


# Writing multiline string is very simple in Ruby language. We will show three ways to print multi line string.
# 
# String can be written within double quotes.
# The % character is used and string is enclosed within / character.
# In heredoc syntax, we use << and string is enclosed within word STRING.


# example


puts"
A 
AB
ABC
ABCD"


puts %/
A
AB
ABC
ABCD/


puts <<STRING
A
AB
ABC
ABCD
STRING



#  Variable Interpolation


# Ruby variable interpolation is replacing variables with values inside string literals. 
# The variable name is put between #{ and } characters inside string literal.

# example

country = "INDIA"

capital = "New Delhi"

puts"#{capital} is the capital of #{country}"


# Concatinating String

#Ruby concatenating string implies creating one string from multiple strings. You can join more than one string to form a single string by concatenating them.

# There are four ways to concatenate Ruby strings into single string:

#     Using plus sign in between strings.
#     Using a single space in between strings.
#     Using << sign in between strings.
#     Using concat method in between strings.




string = "This is Ruby Tutorial"+ "from javaTpoint " + "Wishing you all good luck"

puts string


string1 = "This is Ruby Tutorial" " from JavaTpoint." " Wish you all good luck."   
puts string1 



string2 = "This is Ruby Tutorial" << " from JavaTpoint." << " Wish you all good luck."   
puts string2   

string3 = "This is Ruby Tutorial".concat(" from JavaTpoint.").concat(" Wish you all good luck.")   
puts string3


# Freezing Srings

# Therefore mutable strings are those strings whose content can be changed without creating a new object

# In most programming languages strings are immutable. It means that an existing string can't be modified, only a new string can be created out of them.

# In Ruby, by default strings are not immutable. To make them immutable, freeze method can be used.

str = "Original string"
str<<" is modified"
str<<" is again modified"


puts str

str.freeze

#str << "And here modification will be failed after using freeze method"  

# In the above output, we have made the string immutable by using freeze method. Last line is commented as no string can't be modified any further.

# By uncommenting the last line, we'll get an error as shown in the below output.

# Comparing String

# Ruby strings can be compared with three operators:

# With == operator : Returns true or false
# With eql? Operator : Returns true or false
# With casecmp method : Returns 0 if matched or 1 if not matched

puts "abc" == "abc"   
puts "as ab" == "ab ab"   
puts "23" == "32"   
  
puts "ttt".eql? "ttt"   
puts "12".eql? "12"   
  
puts "Java".casecmp "Java"   
puts "Java".casecmp "java"   
puts "Java".casecmp "ja"
