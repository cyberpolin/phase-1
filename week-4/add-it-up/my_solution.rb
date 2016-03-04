# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers

# Output: Sum of all numbers in the array

# Steps to solve the problem.
# - define a 'total' variable that is equal to zero.
# - for each number in the array, add it to the 'total' and update total
# to be equal to the sum of the equation.
# - end the loop and return the total.


# 1. total initial solution
def total(array)
  total = 0
  array.each do | x |
    total = x + total
  end
  p total
end
 total([1, 2, 3, 4, 5])

# 3. total refactored solution

# WE got the working solution on the first try.

# 4. sentence_maker pseudocode


# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Each element joined into a sentence
# Steps to solve the problem.

# -create an empty string called total
# -iterate over every element in the array and add each one to the total
# -print the total


# 5. sentence_maker initial solution

# def sentence_maker(array)
#   total = ""
#   array.each do | x |
#     total = total + x + " "
#   end
#   p total
# end
# sentence_maker(["hi", "my", "name", "is", "what"])

# 6. sentence_maker refactored solution

def sentence_maker(array)
  total = ""
  array.each do | x |
    total = total + x.to_s + " "
  end
  p total.capitalize.chop + "."
end
sentence_maker(["hi", "my", "name", "is", "what"])