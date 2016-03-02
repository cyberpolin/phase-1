=begin
Full name greeting:

puts "Please enter your first name:"
first_name = gets.chomp
puts "Please enter your middle name:"
mid_name = gets.chomp
puts "Please enter your last name:"
last_name = gets.chomp
puts "It's nice to meet you, #{first_name + " " + mid_name + " " + last_name}!"
----------------------------------------------------------------------------

#Bigger, better favorite number:

puts "Please enter your favorite number:"
number = gets.chomp.to_i
number += 1
puts "That's a lovely number, but I think that #{number} is much better."
------------------------------------------------------------------------------

How do you define a local variable?
---------------------------------------
You choose a name for a variable and make it equal to a value that you need.
If you variable is a string you must use quotes like this: < name = "Andrey" >
If your variable is an integer you just write it as it is: < number = 22 >

How do you define a method?
---------------------------------------
You write 'def' followed by a method name of your choice, and if it accepts any
arguments you add them in parenthesis: < def calculator(number1, number2) >
followed by the word 'end' on a new line.
NOTE: you can skip the parenthesis, but I feel it looks better and easier to read.

What is the difference between a local variable and a method?
----------------------------------------
A local variable is just a temporary place holder for a certain value in a block of
code, and it can't accept any arguments. A method however can accept arguments and can be 'called' to use on other variables. Also there is usually a blcok of code inside a method.

How do you run a ruby program from the command line?
-----------------------------------------
You navigate to the directory where your program is saved and you type: < ruby file_name.rb >

How do you run an RSpec file from the command line?
-----------------------------------------
You navigate to the directory where the spec file is saved and you type: < rspec file_name_spec.rb >

What was confusing about this material? What made sense?
-----------------------------------------
Nothing was confusing for me, It was pretty straight forward basic ruby. I'm excited to learn about more complex syntax, and apply it.

Links to the exercises for 4.3:
-------------------------------
https://github.com/Aslonski/phase-0/blob/master/week-4/define-method/my_solution.rb
https://github.com/Aslonski/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/Aslonski/phase-0/blob/master/week-4/math/my_solution.rb

=end