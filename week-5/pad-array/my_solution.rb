# Pad an Array

# I worked on this challenge [with:Denny Jovic]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?array, integer , and optional value
# What is the output? the output is the new array with the padded values or the same array depends on the integer.
# What are the steps needed to solve the problem?
 #IF length < minimum size
  # return new array
# ELSE minimum size <= length of array
  # return array
# END
#------------------------------------------

# 1. Initial Solution
#  def pad!(array, min_size, value = nil) #destructive
#   digits = min_size - array.length
#   if array.length == 0 ||  array.length < min_size
#    digits.times do
#      array << value
#    end
#   else array.length >= min_size
#      p array
#   end
#   p array
# end

# pad!([1,2,3], 7, "beer")

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   digits = min_size - array.length
#   if array.length == 0 || array.length < min_size || array.length > min_size
#    digits.times do
#      new_array << value
#    end
#   else array.length <= min_size
#      return array
#   end
#   p array + new_array
# end
# pad([1,2,3], 7, "beer")



# 3. Refactored Solution
#---------------------


def pad!(array, min_size, value = nil) #destructive
  # This fills the array with the value through the range value of the array length and min_size value
  array.fill(value, array.length...min_size)
end
p pad!([1,2,3], 7, "beer")

def pad(array, min_size, value = nil) #non-destructive
  # This does the same as above, only it clones the array then does the code in order to keep it non destructive
  # This fills the array with the value through the range value of the array length and min_size value
  array.clone.fill(value, array.length...min_size)
end

p pad([1,2,3], 7, "beer")


# 4. Reflection
#-----------------

# Were you successful in breaking the problem down into small steps?
#--------

# We didn't break it down to small steps properly and it wasn't detailed as it should be and this is why we had a harder time figuring out the solution.


# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#--------

# Like I mentioned above we didn't do a good job of breaking it don and writing proper pseudocode, and that is the main reason we struggled, we took more like trial and error approach.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#--------

# It took us a while to get the initial solution working and passing all the tests, and what we did, since we didn't have a good pseudocode, we tried to go of off the rspec errors and see where our problem was. We tackled each error one by one until we got it to work.


# When you refactored, did you find any existing methods in Ruby to clean up your code?
#--------

# OH yes! My partner did a great job finding the .fill and .clone methods, which allowed us to refactor our initial solution down to 3 lines of code total!


# How readable is your solution? Did you and your pair choose descriptive variable names?
#--------

# I definitely feel like our initial solution is readable and well structured, even if it's not the best way to solve this problem.


# What is the difference between destructive and non-destructive methods in your own words?
#--------

# Destructive methods will permanently change the original value in the output, and non-destructive methods will not change the original value.
