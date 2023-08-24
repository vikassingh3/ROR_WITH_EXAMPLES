#RUBY ARRAY

#Ruby arrays are ordered collections of objects

#They can hold objects like integer, number, hash, string, symbol or any other array.

# Ruby arrays are ordered collections of objects. They can hold objects like integer, number, hash, string, symbol or any other array.

# Its indexing starts with 0. The negative index starts with -1 from the end of the array.
# For example, -1 indicates last element of the array and 0 indicates first element of the array.




#Creating Ruby Arrays

#A ruby array is created in many way

    # --> USing literal constructor[]
    # --> Using new class method


#Using literal construct []

#A Ruby array is constructed using literal constructor []. A single array can contain different type of objects.

# For example, following array contains an integer, floating number and a string.


# example 

exm = [3, 4.9, "vikas"]
puts exm


# Using new class method


#A Ruby array is constructed by calling ::new method with zero, one or more than one arguments.


# syntax 

# arrayName = Array.new

# to set the size of an array

# arrayName = Array.new(10)

# Here, we have mentioned that array size is of 10 elements.

# To know the size of an array, either size or length method is used.

# example 

exm = Array.new(10)

puts exm.size

puts exm.length


exm = Array("a".."z")

puts "#{exm}"

#Accessing Array Element

# Ruby array elements can be accessed using #[] method.
# You can pass one or more than one arguments or even a range of arguments

#   #[]method

days = ["mon", "Tue", "Wed", "Thu", "Fri", "Sun"]

puts days[0]
puts "#{days[10]}"

puts "#{days[-2]}"
puts "#{days[2,3]}"
puts "#{days[1..7]}"


#to access perticular element, at method can also be used

# example

puts days.at(0)
puts days.at(-1)
puts days.at(5)


#SLICE Method

# The Slice method works similar to #[] method

# FETCH Method

# The fetch method is used to provide a default value error for out of array range indices

# example

days = ["Monday", "tuesday", "Wednesday", "Thursday", "Friday", "Sataurday", "Sunday"]

puts days.fetch(10, [0])


#first and Last method

# The first and last method will return first and last element of an array respectively.

days = ["Monday", "tuesday", "Wednesday", "Thursday", "Friday", "Sataurday", "Sunday"]

puts days.first
puts days.last



#TAKE mrthod

# The take method returns the first n elements of an array.

days = ["Monday", "tuesday", "Wednesday", "Thursday", "Friday", "Sataurday", "Sunday"]

puts days.take(1)
puts days.take(2)


#DROP method

#the drop method is the opposite of take method.
# It returns elements after n elements between have been dropped.

# Example?

days = ["Monday", "tuesday", "Wednesday", "Thursday", "Friday", "Sataurday", "Sunday"]
puts "#{days.drop(5)}"
puts "#{days.drop(6)}"


#ADDING ITEM TO ARRAY 

#RUby array element can be added in different ways

# push or <<
# unshift
# insert


# push or <<

# Using push or <<, items can be added at the end of an array.


days = ["Monday", "tuesday", "Wednesday", "Thursday", "Friday", "Sataurday", "Sunday"]
puts "#{days.push("today")}"
puts "#{days<<("Tomarrow")}"


#UNSHIFT


# Using unshift, a new element can be added at the beginning of an array.


days = days = ["Wednesday", "Thursday", "Friday",  "Sunday"]
puts "#{days.unshift("Today")}"



#Insert 

# Using insert,
# a new element can be added at any position in an array.
# Here, first we need to mention the index number at which we want to position the element.


days = ["Wednesday", "Thursday", "Friday",  "Sunday"]

puts "#{days.insert(2, "Monday")}"



#Removing itmes from an arrray


#Ruby array elements can be removed in different ways.

# pop
# shift
# delete
# uniq

#POP

# Using pop, items can be removed from the end of an array. It returns the removed item.

days = ["Wednesday", "Thursday", "Friday",  "Sunday"]

one = "#{days.pop}"

puts one



#SHIFT


# Using shift, items can be removed from the start of an array. It returns the removed item.


days = ["Wednesday", "Thursday", "Friday",  "Sunday"]

two = "#{days.shift}#{days}"

puts two



#DELETE


# Using delete, items can be removed from anywhere in an array. It returns the removed item.

days = ["Wednesday", "Thursday", "Friday",  "Sunday"]

three = "#{days.delete("Thursday")}"
puts three



#UNIQ


# Using uniq, duplicate elements can be removed from an array. It returns the remaining array.

days = ["Wednesday", "Thursday", "Friday", "Friday",  "Sunday", "11111111111111"]



four = "#{days.uniq}"

puts four




