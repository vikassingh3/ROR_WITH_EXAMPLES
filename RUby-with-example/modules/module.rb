# A Module is a collection of methods, constants, and class variables. 
# Modules are defined as a class, but with the module keyword not with class keyword.


# Important Points about Modules:
# A user cannot access instance method directly with the use of the dot operator as he cannot make the instance of the module.


# You cannot inherit modules or you can’t create a subclass of a module.
# Objects cannot be created from a module.
# Modules are used as namespaces and as mixins.
# All the classes are modules, but all the modules are not classes.
# The class can use namespaces, but they cannot use mixins like modules.
# The name of a module must start with a capital letter.


# Example of a module:

module Hello

    C = 10;
    B = 6
    def Hello.portal
        puts "Module Method 1"
    end
    def Hello.tutorial
        puts "Ruby tut "
    end

end

# can access the value of module constatnt c using :: colon notation
puts Hello::C
# puts Hello.C
puts Hello::B

#calling the methods of module Hello
Hello.portal
Hello.tutorial


