# The execution and exception always go together.
#if you are opening a file which does not existing then if you handle this situation properly, then your program is considered to be of bad quality.


#The program stops if an exception occurs.
#So exceptions are used to handle various type of errors, 
# which may occur during a program execution and take appropriate action instead of halting program completely.

#BEGIN
#END

# syntax

# begin
#     #-
# rescue OneTypeOfException
#     #-
# rescue AnotherTypeOfException
#     #-
# else
#     # Other exceptions
# ensure
#     #Always will be executed
# end



# begin
#     file = open("/ht.text", "r+")
#     if file
#        puts "File opened successfully"
#     end
#  rescue
#        puts "does not exists"
# end
#  print file, "==", STDIN, "\n"


#Using retry Statement

# begin
#     file = open("dgshjkl")
#     if file
#        puts "File opened successfully"
#     end
# rescue
#     fname = "existant_file"
#     retry
# end

# NOTE − Notice that if the file of re-substituted name does not exist this example code retries infinitely. 
# Be careful if you use retry for an exception process.


# USing raise 

# you can use raise statement to raise an exception .
# The following method raises an exception whenever it's called.
# it's second message will be printed.


# raise

# OR

# raise "Error Message"

# OR

# raise ExceptionType, "Error Message"

# OR

# raise ExceptionType, "Error Message" condition


# begin  
#     puts 'I am before the raise.'  
#     raise 'An error has occurred.'  
#     puts 'I am after the raise.'  
#  rescue  
#     puts 'I am rescued.'  
#  end  
#  puts 'I am after the begin block.' 


# begin  
#     raise 'A test exception.' 
#     rescue Exception => e  
#     puts e.message  
#     puts e.backtrace.inspect  
   
#  end


# puts "Raised Exception:\n"
# begin
# a = 30
# b = 0
 
#     # raises the exception only if the condition is true
#     raise ZeroDivisionError.new 'b should not be 0' if b == 0
#     print "a/b = ", (1 + 2) * (a / b)
# rescue ZeroDivisionError => e 
#    puts e.message
 
#    # prints the error stack, but a raised exception has zero stack
#    puts e.backtrace
# end
  
# puts "\nRuntime Exception:\n"
# begin
# a = 30
# b = 0
# x=(1 + 2) * (a / b)
 
#     # raises the exception only if the condition is true
#     raise ZeroDivisionError.new 'b should not be 0' if b == 0
#     print "a/b = ", (1 + 2) * (a / b)
# rescue ZeroDivisionError => e 
 
#   # prints the message=>(divided by 0)
#   # from ZeroDivisionError class
#    puts e.message
#    puts e.backtrace
# end


# puts 'starting up'
# begin
#   case rand(3)
#   when 0
#     ([] + '')
#   when 1
#     (foo)
#   when 2
#     (3 / 0)
#   end
# rescue TypeError, NameError => e
#   puts "oops: #{e.message}"
# rescue Exception => e
#   puts "ouch, #{e}"
# end
# puts 'done'










# Syntax
# begin
# #.. process
# #..raise exception
# rescue
# #.. handle error
# ensure
# #.. finally ensure execution
# #.. This will always execute.
# end


#  can we use raise without rescue ???????????????????????????????

# Example
begin
   raise 'A test exception.'
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
ensure
   puts "Ensuring execution"
end 
