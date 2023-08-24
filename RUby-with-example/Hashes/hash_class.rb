#hash - Class


# When we tries to access the keys which do not exist in the hash 
# then it will return nil value.

# 1. []

# Hash[(key=>value)*]


puts Hash[2, 30, "y", 18]

# or 

p Hash["a"=>12, "b"=>45]


#2. new -- this method return empty hash

# Hash.new

# Hash.new(obj)

# Hash.new{|hash, key|block}

# example

a = Hash.new("geeksforgeek")

p a["x"] = 34
p a["y"] = 56
p a["x"]
p a["y"]
p a["z"]





# 3. try_convert



#This method is used to convert obj into hash and returns hash or nil. 
# It return nil when the obj does not convert into hash.

#  Hash.try_convert(obj)


# Example


p Hash.try_convert({3=>8})


# nil because cant convert into hash
p Hash.try_convert("3=>8")




# INSTANCE METHOD



# 1. == --> it is known as Equality
# check if two hashes are equal or not


# hsh1 = hsh2


# Example


a1 = {"x" => 4, "y" => 109}
a2 = {"x" => 67, "f" => 78, "z" => 21}
a3 = {"f" => 78, "x" => 67, "z" => 21}
 

p a1 == a2
p a2 == a3



# 2. It is known as Element refenece
# It retrieves the value that stored in the key
# if it does not find any value it return the default value


# hsh[key]


# Example

a = {"x" => 45, "y" => 67}

p a["x"] = 56
p a["g"]
p a["z"]





# 3. []= It is known as ELement Assignment
#  It associates the value given by value with thw key given by key



# hsh[key]=value


# Example

a = {"x" => 45, "y" => 67}

a["x"]= 34
a["z"]=89
p a



# 4. clear  -- This method removes all the keys and their values from the hsh


# hsh.clear


a = {"x" => 45, "y" => 67}
 
# Using clear method
p a.clear



# 5.  default --This method return the default value. The value that returned by hsh[key], 
# if key did not exist in hsh.

# hsh.default(nil=key)


a = Hash.new("geeksforgeeks")
 
# Using default method
p a.default()
p a.default(2)



# delete -- This method is used to delete the entry from hash whose key is key by returning the corresponding value.


# hsh.delete(key)
# hsh.delete(key){|key|block}


# Example


a = {"x" => 34, "y" => 60}
 
# Using delete method
p a.delete("x")
p a.delete("z")
p a



# delete_if--- this method deletes the keys and thier values from the hsh when the block ius true

# hsh.delete_if{|key, vlaue|block}

# Example

a = {"x" => 34, "y" => 60 , "s"=> 20}
puts "---------------------------------------"

p a.delete_if {|key, value| key > "y"}
p a



# .each --> this method calls block once for each key that present in hsh and pass key and value as parameter.

# hsh.each{|key, value|block}

# Example

a = {"x" => 34, "y" => 60}

a.each {|key, value|puts "the value of #{key} is #{value}"}




# .each_key --> this method calls block once for each key that present in hsh and pass the key as a parameter as a parameter

# hsh.each_key{|key|block}

# Example

a = { "x" => 34, "y" => 60 }

a.each_key {|key|puts key}

# each_pair --> this method is similar to Hash#each method

#=----------------> hsh.each_pair{|key, value|block}

# each_vlaue --> this method calls block once for each key that present in hsh and pass value as a parameter.

# hsh.each_vlaue{|vlaue|block}


# Example

a = { "g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676 }

a.each_value {|value|puts value}

# empty --> this method return true if hsh does not contain any key and value pair. 
# Otherwise return false

# hsh.empty?


# fetch --> this methodd return a value from the hsh using the given key
# if the key is not found then it gives result depends on following conditions

# If no argument, then it will raise an exception.
# If the default is given the it will return the default .
# If an option block is present, then it will run the block and return the result of the block.

# hsh.fetch(key[, default])
# hsh.fetch(key){|key|block}



# hash_key? --> this method return true if the given key is present in the bsh, otherwise, return false.

# hsh.has_key?

# Example

a = {"g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676}

p a.has_key?("x")


# hash_vlaue? --> true when vlaue will present in hsh
# hsh.hash_vlaue?
a = { "g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676 }
 
# Using has_value? method
p a.has_value?(23)
p a.has_value?(234)

# include? -->his method is similar to Hash#has_key? method.
# hsh.include?


# index --> This method return the key that contain the given value.

# hsh.index(value)



# invert --> This method returns a new hash created by hsh‘s values as keys and the keys as values. 
# hsh.invert

a = { "g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676 }
 
# Using invert method
p a.invert

# key? --> This method is similar to Hash#has_key?.

# hsh.key?(key)

# keys --> This method returns an array of keys that present in the hash.
p a.keys

# length --> This method returns the number of key and value pair from the hsh.

p a.length

# member? --> This method is similar to Hash#has_key?.

p a.member?("x")

# merge --
a2 = { "h" => 2343, "i" => 4340 }
a1 = { "g" => 23, "h" => 25 }
 
# Using merge method
p "Munish------------------"
p a2.merge!(a1)
p a2

# merge!  -- not understand

# rehash -->This method recreate the hash based on the current hash value from each key. If the value of the keys hash changed, then it will re-index the hsh.

# hsh.rehash

# Example
x = [ "x", "g" ]
y = [ "y", "f" ]
a = { x => 45345, y => 6756 }
p a[x]
p x[0] = "h"
p a[x]
 
# Using rehash method
p a.rehash
p a[x]


# reject -->This method is similar to Hash#delete_if, but it return the copy of hsh 

# hsh.reject{|key, value|block}


# reject! -> This method is similar to Hash#delete_if, but return nil if no changes take place.

# hsh.reject!{|key, value|block}



# replace --> This method replace the content of hsh from other_hsh.

# hsh.replace(other_hsh)

a = { "x" => 34, "y" => 60, "z"=>33 }
 
# Using replace method
p a.replace({ "y" => 88, "x" => 987 })

# select --> This method returns a new array that consists of a key and value pair only for which the given condition in the block is true.

# hsh.select{|key, value| block}

a = { "x" => 34, "y" => 60, "z"=>33 }
 
# Using select method
p a.select {|g, f| g > "x"}

# shift --> This method remove the key and value pair from the hsh and return them as a two-item array. If the hshdoes not contain any pair then return nil.

p a.shift

 
a = { "x" => 34, "y" => 60, "z"=>33 }
 
# Using the shift method
p a.shift
p a


# size --> This method is similar to Hash#length.

p a.size


# sort : This method converts the hsh to the nested array of arrays that contains keys and their values and sort them by using Array#sort.

# hsh.sort
# hsh.sort{|a, b|block}
# Example:

# Ruby program to illustrate
# use of sort method
 
a = { "x" => 34, "y" => 60, "z"=>33 }
 
# Using sort method
p a.sort
p a.sort {|x, y| x[1]<=>y[1]}
# Output: 

# [["x", 34], ["y", 60], ["z", 33]]
# [["z", 33], ["x", 34], ["y", 60]]

# store -- > This method is similar to Hash#length.

p a.size

# to_a  -->  This method convert the hsh to the nested array of arrays that contains keys and their values.

p a.to_a


# to_s --> This method convert hsh into a string. In other words, it converts the hash array, i.e. key and value pair in a string.

p a.to_s

# update --> This method is similar to Hash#merge!.

# hsh.update(other_hsh)
# hsh.update(other_hsh){|key, old_value, new_value|block}

# value? --> This method returns an array which contains the values that present in hsh.

p a.values

# values_at --> This method returns an array that contains the values of the specified keys and also provide default values for the keys that are not found.

# hsh.values_at([keys])

a = {"x" => 34, "y" => 60, "z"=>33}
 
# Using values_at method
p a.values_at("x", "y")
 
# Using default method
a.default = "geeks"
 
# Using values_at method
p a.values_at("x", "y", "z", "g")

# values --> values : This method returns an array which contains the values that present in hsh.

p a.values








