# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#The input is one positive integer.

# What is the output? (i.e. What should the code return?)
#The output is a comma seperated integer as a string.

# What are the steps needed to solve the problem?
# - define a method that accpets one argument as a positive integer
# - check the integer to see how many commas needed
# IF the integer is less than 1000, no commas needed
# IF the integer is more than 1000 but less than 1000000 one comma needed
# IF the integer is more than 1000000 but less than 1000000000 two commas needed
# - add the neccesarry commas
# - print the result to the console as a string


# 1. Initial Solution

def separate_comma(num)
puts "The integer must be positive:" if num < 0
  return num.to_s if num < 1000
  if
    num >= 1000 && num < 10000
    num.to_s.split(//).insert(1, ",").join
  elsif
    num >= 10000 && num < 100000
    num.to_s.split(//).insert(2, ",").join
  elsif
    num >= 100000 && num < 1000000
    num.to_s.split(//).insert(3, ",").join
  elsif
    num >= 1000000 && num < 10000000
    new_num = num.to_s.split(//).insert(1, ",").join
    new_num.to_s.split(//).insert(5, ",").join
  elsif
    num >= 10000000 && num < 99999999
    new_num = num.to_s.split(//).insert(2, ",").join
    new_num.to_s.split(//).insert(6, ",").join
  end
end
puts separate_comma(10000000)
puts separate_comma(504000)
puts separate_comma(8766)


# 2. Refactored Solution

# def separate_comma(num)
# return num.to_s if num < 1000
# num_new = num.to_s.reverse
#   array = []
#   until num_new == "" || num_new == nil
#     array << num_new.slice!(0, 3)
#   end
# array.join(",").reverse
# end
# puts separate_comma(10000000)
# puts separate_comma(504000)
# puts separate_comma(8766)

# 3. Reflection
# --------------------------------------------------------------
# What was your process for breaking the problem down? What different approaches did you consider?

# I tried to figure out how I would solve that problem if I didn't have a computer
# and I thought about the steps I needed to do to achieve that.

# # Was your pseudocode effective in helping you build a successful initial solution?

# I'm still having a hard time putting the initial idea/solution into words but I'm working on it and slowly getting better. It definitely is helpful to have some basic steps before writing the actual code, it kind of reminds me of how we did the wireframe of our website before writing the code, it made the process much easier, having a clear vision of what it would look like. So I know I need to do the same with pseudocode.


# # What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# The new methods that I used in refactoring were .reverse and .slice
# I used .reverse in the past so I didn't have to look it up on Rubydocs, but I had to use it in combination with .slice to "slice" the numbers from the back to the front every 3 numbers. It took me a few tries to write the proper syntax and i figured out that I had to use the 'bang' version of slice using the '!' in order to change the string permanently. It did change the way my code works by allowing me to pass even a very large number to the method, and it would still slice it every 3 numbers.


# # # How did you initially iterate through the data structure?

# In my initial solution I didn't use iteration, and it made my code limited to an argument shorter than 8 digits. But i really wanted to figure out a solution that passes the rspec without using premade ruby methods, and even thought it's limited to only 8 digits I was very happy that I figured it out by myself. I could potentially make it limited to more digits, but that was enough to pass the rspec and also it would start to look pretty ugly :)


# # # Do you feel your refactored solution is more readable than your initial solution? Why?

# It is definitaly more readable since there's less code to go through, and its not as repetitive as my initial sollution. Also it uses iteration so you can pass any size argument and it would always work.