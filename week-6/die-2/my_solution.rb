# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:Array
# Output:String
# Steps:
# - Display an error message if the new die is passed an empty array
# - Define the number of sides to be equal to the length of the input array
# - Figure out a way to randomize the returned string, from the strings in the array, based on the array's index, because the input array contains strings.


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
      if labels == []
        raise ArgumentError.new("Can't create an empty dice!")
      end
  end

  def sides
    sides = @labels.length
  end

  def roll
    @labels.fetch(rand(0..sides-1))
  end
end
die = Die.new(%w[A B C D E F])
p "The number of sides is #{die.sides}"
puts "You rolled:"
p die.roll


# Refactored Solution


# I feel like there is not much refactoring that could be done
# to my initial solution.


# # Reflection
#------------------

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# There wasn't much difference between the two die classes in my opinion. The only main difference was to figure out a way how to print a random string from the initial array, instead of just a random number. And the logic is almost identical.


# # What does this exercise teach you about making code that is easily changeable or modifiable?

# It is definitely a good practice to write code that can be easily altered or modified to suit a certain need, in our case we went from random number to a random letter and all it took is to change a couple lines of code.


# # What new methods did you learn when working on this challenge, if any?

# I learned a new method called .fetch, what it does is, it returns an element from an array based on the passed index. In our case the passed index is a random number, from zero, to the number equal to the length of the array, and the -1 is there because the index starts at zero. So if we have an array with 6 elements, you can only access elements at index 0 through 5, element 6 would outside of the scope of the array, thats why I had to add the -1.


# # What concepts about classes were you able to solidify in this challenge?

# I understand the difference between local and instance variables much better after playing around with the code and seeing how it behaves if I removed the @ sign from the variable name.
