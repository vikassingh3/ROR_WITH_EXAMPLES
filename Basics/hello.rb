puts "hello World"

# for loop
i = "sudo placement"

for a in 1..5 do
    puts i
end

# while loop
x = 4

while x >= 1

    puts "GeeksforGeeks"

    x = x - 1

end


# do while loop

loop do 
    puts "I am vikas "
    val = '7'

    if val == '7'
        break
    end
end


# until loop

var = 7
until var == 11 do
    puts var * 10
    var = var + 1
end


# if condoition

a = 20
if a >= 18
    puts "you are eligible"
end



# if-else Statement

a = 15
if a >=18
    puts "You are eligible to vote"
else
    puts "you are not eligible to vote"
end
    

# if-elsif-else ladder Statement



a = 78
if a < 50
    puts "Student is failed"
elsif a >= 50 && a <= 60
    puts "Student gets D grade"
elsif a >= 70 && a <= 80
    puts "Student gets B grade"
elsif a >= 80 && a <= 90
    puts "Student gets A grade"
elsif a >= 90 && a <= 100
    puts "Student gets A+ grade"
end



# ternary operator
#Syntax

# test-expression ? if-true-expression : if-false-expression



var = 5

a = (var > 2) ? true :false;
puts a

# Polymorphism is a made up of two words (POLY) which mean s(Many)and (MORPH) which means ().Forms

arr=[2,3,4,5,6,7,8,4]
arr.each do |n|
    puts n
end
# for n in arr
#     puts n
# end


puts("Unary operators")


puts(~5)
puts(~-5)
puts(!true)
puts(!false)



#Arithmetics operators

# + 
# -
# /
# *
# **
# %



#Bitwise operator

& AND operator
| OR operator
<< Left shift operators
>> Right shift operator
^ XOR operators
~ Complement operators



#Logical operators

&& AND operators
|| OR operator



# Ternary operators

?:  Conditional operator

puts(2<5?5:2)


#Assignment operators

=	Simple assignment operator
+=	Add assignment operator
-=	subtract assignment operator
*=	Multiply assignment operator
/=	Divide assignment operator
%=	Modulus assignment operator
**=	Exponential assignment operator



Comparision operator

Description
==	Equal operator
!=	Not equal operator
>	left operand is greater than right operand
<   Right operand is greater than left operand
>=	Left operand is greater than or equal to right operand
<=	Right operand is greater than or equal to left operand
<=>	Combined comparison operator
.eql?	Checks for equality and type of the operands
equal?	Checks for the object ID



#Range opertaors

# Range operators create a range of successive values consisting of a start, end and range of values in between.

# The (..) creates a range including the last term and (...) creates a range excluding the last term.

# For example, for the range of 1..5, output will range from 1 to 5.

# and for the range of 1...5, output will range from 1 to 4.

Operator	Description
..	Range is inclusive of the last term
...	Range is exclusive of the last term