# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with:Scott Southard ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:16 digit number
# Output:true or false
# Steps:
# give an error if the input is less than 16 numbers
# Convert number into string
# Split string into array
# Check for even index spots and double each evenly indexed number
# Convert array to string
# Split string into array
# Add each element to find a sum
# Check if sum is evenly divisible by 10


# Initial Solution
# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number
#      raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
#   end

#   def stringsplit
#     @splitted_card_number = @card_number.to_s.split(//)
#   end
#
#   def double_evens
#     @doubled_splitted = @splitted_card_number.map { |n| n.to_i }
#     counter = 0
#     until counter > 14
#       @doubled_splitted[counter] *= 2
#       counter += 2
#     end
#   end

#   def stringsplit_2
#     @doubled_splitted = @doubled_splitted.join.split(//).map { |num| num.to_i }
#   end

#   def sum_it_up
#    @sum =  @doubled_splitted.reduce(:+)
#   end

#   def check_card
#   p @sum % 10 == 0
# end

# new_card = CreditCard.new(4408041234567901)
# new_card.stringsplit
# new_card.double_evens
# new_card.stringsplit_2
# new_card.sum_it_up
# new_card.check_card



# Refactored Solution


class CreditCard
  def initialize(card_number)
    @card_number = card_number
     raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
  end

  def check_card
    splitted_card_number = @card_number.to_s.split(//).map! { |n| n.to_i }
    counter = 0
    until counter > 14
      splitted_card_number[counter] *= 2
      counter += 2
    end
    splitted_card_number = splitted_card_number.join.split(//).map { |num| num.to_i }
    splitted_card_number.reduce(:+) % 10 == 0
  end
end



# Reflection
#--------------------------------------------
# What was the most difficult part of this challenge for you and your pair?

# For us the most difficult part was the debugging. Our initial logic was prety much spot on, we encountered a few weird errors in the beginning due to misspelling of the word initialize, and it took us a while to figure that out. Then the code passed and returned false, and we were REALLY surprised that we got it to work on the 3rd try... But then after running the Rspec we figured out that it only passed if the card was invalid and returned false, it never returned true. So we started debugging step by step by printing the output after every step. It took a while, but our main error was that the counter was iterating over an array of strings and instead of doubling the number it doubled the string, so we got "44" and "66" instead of 8 and 12 respectively. Once we fixed that everything worked!


# What new methods did you find to help you when you refactored?

# We didn't use any new methods while refactoring, all the methods that we used in our initial solution were suficient enough for the refactored version. We did clean up the code quite a bit, by removing unnesescary instance and local variables, and getting rid of different methods for each function that we had, and instead putting everything under one method #check_card.


# # What concepts or learnings were you able to solidify in this challenge?

# I definitely feel much more comfortable with creating my own class, and working with instance variables, also the concepts of good pseudocoding, and refactoring were solidified as well!