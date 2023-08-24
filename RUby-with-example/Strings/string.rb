# In ruby string is sequence of one or more characters.
#it consist of numbers, letters, or symbols.
# Here strings are the objects
# also strings are mutable in ruby
# mutable meaning strings can be changes instead of creating new string


# creating string

# with double quotes
puts "hello all i am vikas"

#with single quotes
puts 'My name is vikas'

# storing string into variable 
#and also no need to specify the data type of the variable


str1 = "Hello"
str3 = 
str2 = 'nice'


puts str1, str2


# the only dffrnce btw single '' and "" quotes is that the "" quotes will interpolates the variable but single cant


# storing string into variables
str1 = "GFG"
str2 = 'Geeks'
  
# using single quotes
puts 'Cannot Interpolate str1: #{str1}'
# using double quotes
puts "Interpolating str2: #{str2}"

puts "this is me vikas " + "#{str1}" + "tarun"

puts 'and it is ' + '#{str2}' + ' meeting with you'


# string is object
# also object is a combinantion of the data and methods which enhance the communication properly


# chomp ???

#Example 

str = "GeeksforGeeks"

puts str

# using new method to create string
# object and assigning value to it

str2 = String.new "GeeksforGeek"

puts str2




#Access String Element
# we can access the string element by using [] brackets

#Syntax 

# name_of_string[arguments]


# Example


string = "Hello everyone!hfdhfdhd"

puts string["He"]
puts string['ever']

puts string[3]
puts string[-3]

puts string[14...17]



# creating multiline string

# Using Double Quotes ""
# Using (%//)
# Using (<< STRING STRING)

#Example

# Using Double Quotes
puts "In hhhhhhhh, a user can create the multiline
      strings easily where in other programming 
      languages creating multiline strings 
      requires a lot of efforts"


# Using %/ /
puts %/ In heellll, a user can create the multiline
      strings easily where into other programming 
      languages creating multiline strings 
      requires a lot of efforts/


# Using <<STRING STRING
puts <<STRING
  
In Ruby, a user can create the multiline
strings easily where into other programming 
languages creating multiline strings 
requires a lot of efforts 
STRING


#Steing Replication

# if we want to repeat some string multiple time

# use * operator


# Example


str = "Hello vikas\n"

puts str * 4

