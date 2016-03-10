# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input:new die with a set amount of sides larger than 0
# Output:number of sides, and a random number that the die rolled
# Steps:
#1. Make an argument error raise if sides number is less than 1
#2. Make the sides of the dice to be equal to the initial input from the user
#3. Randomize a number from 1 to the number of sides.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
      if sides < 1
        raise ArgumentError.new("Must be a number larger than zero!")
      end
  end

  def sides
   sides = @sides
  end

  def roll
   rand(1..@sides)
  end
end
die = Die.new(6)
p die.sides
p die.roll

#Reflection:
#-----------

# What is an ArgumentError and why would you use one?
#--------------------

# An ArgumentError is a message for the user which notifies them that their input was incorrect, and what needs to be changed. You would use it to get the user to type in the proper and desired input.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#--------------------

# The raise ArgumentError.new was new to me, but it wasn't cahellenging implementing it.


# What is a Ruby class?
#--------------------

# A Ruby class is a blueprint for the creation of new objects. "Hello" is a String class and 5 is a Fixnum class. It will contain methods and variables: local and instance.


# Why would you use a Ruby class?
#--------------------

# You would use a Ruby class to create your own objects and methods to use in your program.


# What is the difference between a local variable and an instance variable?
#--------------------

#Local variables are only available inside a method in wich they were initially defined, you eill not be able to access it outside of the defined method. Instance variables on the other hand are available to use accross methods for any instance or object and they are defined by using the @ sign before the variable name.


# Where can an instance variable be used?
#--------------------

#They can be used inside an instance of a class accross multiple methods within that instance.