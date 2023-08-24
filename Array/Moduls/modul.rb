#



## RUBY MODULES

# Moduls are Ruby files that contain a set of functions.
# Moduls are stored in the directory 'lib' of the project.
# Moduls are loaded by the Ruby interpreter.  
# Moduls are loaded in the order they are stored in the directory.
# Ruby modele is a collection of methods and constants.


#They are similar to classes as they hold a collectionof methods,class definitions, constants and others moduls.


# Module Basically serve two Purposes:

# -> They act as a namespace. They prevent name clashes.
# -> they allow the mixin facility to share functionality between classes.


# Syntax 


# module ModuleName
#     statement1
#     statement2
#     ...
# end

# module namespace----


While writing larger files, a lot of reusable codes are generated. 
These codes are organized into classes, which can be inserted into a file.

For example, if two persons have the same method name in different files.
And both the files need to be included in a third file.
Then it may create a problem as the method name in both included files is same.

example

Suppose, in file1.rb, we have defined number of different type of library books like fiction, horror, etc.
In file2.rb, we have defined the number of novels read and left to read including fiction novels.
In file3.rb, we need to load both the files file1 and file2.
 Here we will use module mechanism.


 file1.rb


# Module defined in file1.rb file   
  
module Library   
   num_of_books = 300   
   def Library.fiction(120)   
   # ..   
   end   
   def Library.horror(180)   
   # ..   
   end   
end 



file2.rb

    # Module defined in file2.rb file   
  
module Novel   
    total = 123   
    read = 25   
    def Novel.fiction(left)   
    # ...   
    end   
 end  


file3.rb

require "Library"   
require "Novel"   
  
x = Library.fiction(Library::num_of_books)   
y = Novel.fiction(Novel::total)  



Module Mixin

Ruby doesn't support multiple inheritance.
Modules eliminate the need of multiple inheritance using mixin in Ruby.
A module doesn't have instances because it is not a class.
However, a module can be included within a class.
When you include a module within a class, the class will have access to the methods of the module.

module Name   
    def bella   
    end   
    def ana   
    end   
 end   
 module Job   
    def editor   
    end   
    def writer   
    end   
 end   
   
 class Combo   
 include Name   
 include Job   
    def f   
    end   
 end   
   
 final=Combo.new   
 final.bella   
 final.ana   
 final.editor   
 final.writer   
 final.f  

