# mixins in ruby allows modules to access instance methods of another one using include method.
# Mixins provides a constrolled way of ading functionality to existing classes. The code in the mixin starts to interact with code inn the class. in ruby

# A code wrapped up in module is called a mixin that a class can include or extend. 
# A class consist many MIXINS.



# example  of a mixin


module G 
    def a1
        puts "this is g1"
    end
end
module G1
    def a2
        puts "This is g2"
    end
end
module G2
    def a3
        puts "This is g3"
    end
end

#creating class

class Parent 
include G
include G1
include G2
    def display 
        puts "three modules have included"
    end
end

obj = Parent.new

obj.display
obj.a1
obj.a2
obj.a3



