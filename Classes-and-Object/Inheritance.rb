RUBY - Inheritance

Inheritance allows the programmer to inherit the characteristics of one class into another class. 
Ruby supports only single class inheritance, 
it does not support multiple class inheritance but it supports mixins. 
The mixins are designed to implement multiple inheritances in Ruby, 
but it only inherits the interface part. 

Inheritance provides the concept of “reusability”, 
i.e. If a programmer wants to create a new class and there is a class that already includes some of the code that the programmer wants, 
then he or she can derive a new class from the existing class. By doing this, it increases the reuse of the fields and methods of the existing class without creating extra code.

  [A]-----> [B]

In the above image class A is super class and class B is a subclass or you can say class B is derived from class A(Base Class).

Key terms in Inheritance: 

Super class: The class whose characteristics are inherited is known as a superclass or base class or parent class.
Sub class: The class which is derived from another class is known as a subclass or derived class or child class. You can also add its own objects, methods in addition to base class methods and objects, etc.
Note: By default, every class in Ruby has a parent class. 
Before Ruby 1.9, Object class was the parent class of all the other classes or you can say it was the root of the class hierarchy. 
But from Ruby 1.9 version, BasicObject class is the super class(Parent class) of all other classes in Ruby. 
Object class is a child class of BasicObject class. 

Syntax:  

subclass_name < superclass_name
Example: 

# Ruby program to demonstrate
# the Inheritance
 
#!/usr/bin/ruby
 
# Super class or parent class
class GeeksforGeeks
 
    # constructor of super class
    def initialize
         
        puts "This is Superclass"
    end
     
    # method of the superclass
    def super_method
         
        puts "Method of superclass"
    end
end
 
# subclass or derived class
class Sudo_Placement < GeeksforGeeks
 
    # constructor of deriver class
    def initialize
 
       puts "This is Subclass"
    end
end
 
# creating object of superclass
GeeksforGeeks.new
 
# creating object of subclass
sub_obj = Sudo_Placement.new
 
# calling the method of super
# class using sub class object
sub_obj.super_method




Overriding of Parent or Superclass method: 
Method overriding is a very effective feature of Ruby. In method overriding, subclass and superclass contain the same method’s name,
but performing different tasks or we can say that one method overrides another method. 
If superclass contains a method and subclass also contain the same method name then subclass method will get executed.

Example:  

# Ruby program to demonstrate
# Overriding of Parent or
# Superclass method
 
#!/usr/bin/ruby
 
# parent class
class Geeks
     
    # method of the superclass 
    def super_method
         
        puts "This is Superclass Method"
  end
     
end
 
# derived class 'Ruby' 
class Ruby < Geeks
     
    # overriding the method of the superclass 
    def super_method
         
        puts "Override by Subclass"
  end
end
    
# creating object of sub class
obj = Ruby.new
 
# calling the method
obj.super_method 




Use of super Method in Inheritance: This method is used to call the parent class method in the child class. 
If the method does not contain any argument it automatically passes all its arguments. A super method is defined by super keyword. 
Whenever you want to call parent class method of the same name so you can simply write super or super().

Example:  


# Ruby Program to demonstrate the
# use of super method
 
#!/usr/bin/ruby
 
# base class
class Geeks_1
    
    # method of superclass accepting
    # two parameter
    def display a = 0, b = 0
        puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
    end
end
 
# derived class Geeks_2
class Geeks_2 < Geeks_1
 
    # subclass method having the same name
    # as superclass
    def display a, b
         
        # calling the superclass method
        # by default it will pass
        # both the arguments
        super
         
        # passing only one argument
        super a
         
        # passing both the argument
        super a, b
         
        # calling the superclass method
        # by default it will not pass
        # both the arguments
        super()
         
        puts "Hey! This is subclass method"
    end
end
 
# creating object of derived class
obj = Geeks_2.new
 
# calling the method of subclass
obj.display "Sudo_Placement", "GFG"


Output: 

Parent class, 1st Argument: Sudo_Placement, 2nd Argument: GFG
Parent class, 1st Argument: Sudo_Placement, 2nd Argument: 0
Parent class, 1st Argument: Sudo_Placement, 2nd Argument: GFG
Parent class, 1st Argument: 0, 2nd Argument: 0
Hey! This is subclass method