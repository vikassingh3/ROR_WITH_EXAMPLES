#create a module 

module Gfg 
    def portal
        puts "welcome to gfg"
    end
    def tutorial
        puts "gfg is good"
    end
end


#access the method by using include keyword and module name

class Hello
include Gfg
    def add
        x = 23 + 45
        puts x
    end
end

# obj = Hello.new

# obj.portal
# obj.tutorial
# obj.add