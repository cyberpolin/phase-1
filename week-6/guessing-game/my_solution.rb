# Build a simple guessing game

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Integer
# Output:Symbol
# # Steps:
# - define a method inside the class that takes a number as the input and returns high, correct and low if the number is larger,  the same, or lower than the answer, respectively.
# - define another method inside the class that returns true if the most recent number was the same as the answer, and false otherwise, by comparing the initial number to the guessed number.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     return :high if guess > @answer
#     return :correct if guess == @answer
#     return :low if guess < @answer
#   end

#    def solved?
#     return true if @guess == @answer
#     return false
#    end

# end
# game = GuessingGame.new(20)
# puts game.guess(100)
# puts game.solved?
# puts game.guess(20)
# puts game.solved?
# puts game.guess(7)
# puts game.solved?




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :correct if guess == @answer
    guess > @answer ? :high : :low
  end

   def solved?
   @guess == @answer ? true : false
   end
end


# Reflection
#---------------------------------
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# Consider a CD player.  Its state may consist of things like:
# Title of CD currently loaded
# Track number
# Volume setting
# Playing/Paused/Stopped

# Likewise, its behaviors may include:
# Load a CD
# Skip forward
# Skip backward
# Change volume
# Play/Pause/Stop

# Pictorially this could be represented as follows:
# Software objects are similar to real world objects in that they also have state and behaviors.  The state of an object is stored in variables and their behaviors are implemented with methods.  Variables are like named cubbyholes in which you can store data (i.e., values) for later use.  Methods are named pieces of code that implement behaviors the object is capable of.



# When should you use instance variables? What do they do for you?

# You should use instance variabes when you want to pass information between methods, or access that variable outside of the scope of the method, where that variable was initially defined.
# If you define a local variable inside a method you can only use it inside that method, if you try to call it outside of the scope of the method you will get an undefinied local variable error.


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# To use flow control is basically to dictate to your program what, happens when, based on conditional structures like if, else, case and unless. By using the conditional structures you decide how your program will behave or 'flow'.
#   For example you can say:
#   puts "Enter a number:"
#   number = gets.chomp.to_i
#    if number < 10
#      puts "That is a small number!"
#    else
#      puts "Cool number bro!"
#   end
# I didn't have trouble using flow control, but I couldn't figure out how to implement "case" conditional structure into my guess method. I tried several approaches, but they didn't work.


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Using symbols is beneficial for this challenge because once a symbol is created, all uses of that symbol in the future of the program will use no additional memory, it will be the same object every time.
# So we can run the game a million times and it will only use the 3 symbols that we defined, vs. if we made the game return a string "High", "Low", and "Correct"
# we would have a million different string objects.