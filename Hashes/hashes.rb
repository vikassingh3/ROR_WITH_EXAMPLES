

# RUBY HASHES

# A Ruby hash is a collection of unique keys and their values. 
# They are similar to arrays but array use integer as an index and hash use any object type.
# They are also called associative arrays, dictionaries or maps.
# If a hash is accessed with a key that does not exist, the method will return nil.



# syntax

# name = {"Key1"=> "value1", "key2"=> "vlaue2".......}
            # OR
# name = {key1 => "v1", key2 => "v2"............}


# Creating RUBY HASHES


# Ruby hash is created by writing key-value pair within {} curly braces.

# To fetch a hash value, write the required key within [] square bracket.

color = {
    "rose"=>"red",
    "Lily"=> "purple",
    "Marrigold"=> "yellow",
    "Jasmine"=> "white"
}

puts color['rose']
puts color['Lily']


#MODIFYING HASHES ARRAy

# A Ruby hash can be modified by adding or removing a key value pair in an already existing hash.



color = {
    "rose"=>"red",
    "Lily"=> "purple",
    "Marrigold"=> "yellow",
    "Jasmine"=> "white"
}


color['Tulip'] = "pink"
color.each do |key, value|
    puts "#{key} color is #{value}"
end



#Ruby HASH Method

#A Ruby hash has many methods. Some are public class methods and some public instance methods.


#Public class methods

# Method	             Description
# Hash[object]          Create a new hash with given objects.
# new(obj)	             Return a new empty hash.
# try_convert(obj)      Try to convert obj into hash.

#PUBLIC INSTANCE METHOD


# Method	                Description
# hsh==other_hash	        Two hashes are equal if they contain same key and value pair.
# hsh[key]	                Retrieve value from the respective key.
# hsh[key] = value	        Associates new value to the given key.
# assoc(obj)	            Compare obj in the hash.
# clear	                    Remove all key value pair from hash.
# compare_by_identity	    Compare hash keys by their identity.
# compare_by_identity?	    Return true if hash compare its keys by their identity.
# default(key=nil)	        Return default value.
# default = obj             Sets the default value.
# delete(key)	            Delete key value pair.
# each	                    Call block once for each key in hash.
# empty?	                Return true if hash contains no key value pair.
# eql>(other)	            Return true if hash and other both have same content
# fetch(key[, default])     Return value from hash for a given key.
# flatten             	    Return a new array that is a one-dimensional flattening of this hash.
# has_key?(key)	            Return true if given key is present in hash.
# has_value?(value)	        Return true if given value is present in hash for a key.
# include?(key)	            Return true if given key is present in hash.
# to_s/ inspect             Return content of hash as string.
z