# Calculate the mode Pairing Challenge

# I worked on this challenge [with:Aarthi Gurusami ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

 # What is the input? An array of numbers or strings
# What is the output? An array that has the value that occurs the largest amount of times in the original array
# What are the steps needed to solve the problem?
# 1. Start with an empty hash and an empty array
# 2. Iterate over the input array
# 3. For every item in that array add the item to the empty hash as a key
# 4. The value is the number of occurences of the item in the array
# 5. Set a max value equal to zero
# 6. iterate over the new hash
# 7. If the value is greater than the max value, set the new max value equal to that value
# 8. use a method to grab the keys from the hash that have an associated value equal to the final max value
# 9. Put all those keys into our empty array
# 10. Return the array
#-----------------------------------------------------


# 1. Initial Solution
# def mode(array)
#   hash = {}
#   new_array = []
#   array.each do | item |
#     hash[item] = array.count(item)
#   end
#   max = 0
#   hash.each do | key, freq |
#     if freq >= max
#       max = freq
#     end
#   end
#   hash.keep_if{|key, freq| freq == max}
#   p hash.keys

# end
# p mode([-1.5, 2, 3, -1.5])

# 3. Refactored Solution

def mode(array)
  hash = {}
  array.each do | item |
    hash[item] = array.count(item)
  end
  max = 0
  hash.each do | key, freq |
    if freq >= max
       max = freq
    end
  end
  hash.keep_if{|key, freq| freq == max}.keys
end
p mode(%w(OMG OMG OMG WE WE WE SUCK ARE ARE ARE COOL COOL COOL ! ! ! ))

# 4. Reflection
#-----------------

# Which data structure did you and your pair decide to implement and why?
#-------

# We decided to go with hash because we needed a key value pair for the each item in the array as the key and the number of times that item occurs in the array as the value.


# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#--------

# YES! My pair was great with pseudocoding and I learned a lot. Everything was broken down step by step and it made the whole process much easier.


# What issues/successes did you run into when translating your pseudocode to code?
#--------

# It took us some time to figure out how to extrat the key with the highest value from the hash and put it into an array. But we managed to do it with the combination of .keep_if and .keys methods.


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#--------

# We used .each method to iterate through the original array and the new hash, and also we used .keep_if method to iterate through the hash to discard any keys that their value wasn't equal to the max value.
# They were not difficult to implement the syntax in ruby docs examples was pretty straight forward.
