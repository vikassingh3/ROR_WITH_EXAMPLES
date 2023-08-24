A class is a blueprint from which objects are created. 
The object is also called as an instance of a class. For Example, the animal is a class
and mammals, birds, fish, reptiles, and amphibians are the instances of the class.
Similarly, the sales department is the class and the objects of the class are sales data, sales manager, and secretary.
Defining a class in Ruby: 
In Ruby, one can easily create classes and objects. Simply write class keyword followed by the name of the class. 
The first letter of the class name should be in capital letter.
Syntax:
 

class Class_name

end
A class is terminated by end keyword and all the data members are lies in between class definition and end keyword.
Example: 
 

# class name is Animal
class Animal

# class variables
@@type_of_animal = 4
@@no_of_animal = 3

end
Creating Objects using the “new” method in Ruby: 
Classes and objects are the most important part of Ruby.
Like class objects are also easy to create, we can create a number of objects from a single class.
In Ruby, objects are created by the new method.
Syntax:
 

object_name = Class_name.new
Example: 
 

# class name is box
class Box

# class variable
@@No_of_color = 3

end

# Two Objects of Box class
sbox = Box.new
nbox = Box.new
Here Box is the name of the class and No_of_color is the variable of the class.
sbox and nbox are the two objects of box class. 
You use (=) followed by the class name, dot operator, and new method.



Passing Parameters to new Method: 
User can pass any numbers of parameters to “new method” which are used to initialize the class variables. While passing parameters to “new method” it is must to declare an initialize method at the time of class creation. The initialize method is a specific method, which executes when the new method is called with parameters.
Example:
 

# Ruby program to illustrate the passing
# parameters to new method
 
#!/usr/bin/ruby
 
# defining class Vehicle
class Vehicle
 
# initialize method
def initialize(id, color, name)
 
# variables
@veh_id = id
@veh_color = color
@veh_name = name
 
# displaying values
puts "ID is: #@veh_id"
puts "Color is: #@veh_color"
puts "Name is: #@veh_name"
puts "\n"
end
end
 
# Creating objects and passing parameters
# to new method
xveh = Vehicle. new("1", "Red", "ABC")
yveh = Vehicle. new("2", "Black", "XYZ")