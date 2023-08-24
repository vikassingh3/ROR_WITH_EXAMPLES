Constructor


A constructor is a special method of the class which gets automatically invoked whenever an 
instance of the class is created. Like methods, a constructor may also contain the group of 
instructions or a method which will execute at the time of object creation.

Important points to remember about Constructors:

--> Constructors are used to initialize the instance variables.
--> In Ruby, the constructor has a different name, unlike other programming languages.
--> A constructor is defined using the initialize and def keyword.
--> It is treated as a special method in Ruby.
--> Constructor can be overloaded in Ruby.
--> Constructors can’t be inherited.
--> It returns the instance of that class.

Note: 
Whenever an object of the class is created using new method, 
internally it calls the initialize method on the new object. 
Also, all the arguments passed to new will automatically pass to method initialize. 

Syntax:

class Class_Name

   def initialize(parameter_list)

   end

end
Example: 

# A Ruby program to demonstrate
# the working of constructor
 
#!/usr/bin/ruby
   
# class name 
class Demo
   
    # constructor
    def initialize  
        puts "Welcome to GeeksforGeeks!"  
    end  
 
end   
 
# Creating Object
Demo.new
Output:

Welcome to GeeksforGeeks!




Initializing instance variable: Instance variables can be initialized using constructor. Inside the constructor, the initial value to instance variables is provided which can be used further anywhere in the program. 

Example: 

# Ruby program to initialize instance
# variable using constructor
 
#!/usr/bin/ruby
 
# class name
class Geeks
     
    # constructor
    def initialize
         
        # instance variable initialization
        @inst_1 = "GeeksforGeeks"
        @inst_2 = "Sudo Placement"
    end
     
    # display method
    def display
        puts "Value of First instance variable is: #{@inst_1}"
        puts "Value of Second instance variable is: #{@inst_2}"
    end
end
 
# creating object
obj1 = Geeks.new()
 
# calling display method
obj1.display()
Output:

Value of First instance variable is: GeeksforGeeks
Value of Second instance variable is: Sudo Placement

