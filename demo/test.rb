my_num =  25   # Add your code here!

my_boolean = true    # And here!

my_string = "Ruby"  # Also here.



# puts my_num
# puts my_boolean
# puts my_string



def isogram?(string)
    original_length = string.length
    string_array = string.downcase.split
    p string_array
    unique_length = string_array.uniq.length
    puts unique_length
    puts original_length
    original_length == unique_length
end
  
puts (isogram?("Odin"))



friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
    if friend == 'Brian'
        puts "null"
    end
    else
        invited_list.push(friend)
    end

end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]