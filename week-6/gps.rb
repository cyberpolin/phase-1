# Your Names
# 1)Andrey Slonski
# 2)Dan Park

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
    if library.include?(item_to_make) == false
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
   serving_size = library[item_to_make]
   remaining_ingredients = num_of_ingredients % serving_size

   suggested = ""
    if remaining_ingredients == 6
      suggested = " 1 cake and 1 cookie, or 6 cookies."
    elsif
      remaining_ingredients == 5
      suggested = " 1 cake, or 5 cookies. "
    elsif remaining_ingredients <= 4
      suggested = " #{remaining_ingredients} cookies."
    end

    case remaining_ingredients
      when 0
        return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
      else
        return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested}"
    end
end

 p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
 p serving_size_calc("cake", 5)
 p serving_size_calc("cake", 7)
 p serving_size_calc("cookie", 1)
 p serving_size_calc("cookie", 10)
 p serving_size_calc("pie", 14)
 p serving_size_calc("cookie", 44)
 p serving_size_calc("pie", 13)
 p serving_size_calc("pasta", 5)


#  Reflection
#----------------------------------------

# What did you learn about making code readable by working on this challenge?

# I learned that even if the code works perfectly with no errors, there is always a way to make it either look better visually, or improve it for readability and implement different methods to get the same job done with less code.


# # Did you learn any new methods? What did you learn about them?

# I found the .include? method to be very useful in our situation, it helped simplify the code quite a lot, by removing unnecessary variables, and loops. And making the code cleaner and easier to read.


# # What did you learn about accessing data in hashes?

# The challenge solidified my previous knowledge on hashes, and how to access their data, by either calling on the key to get the value: hash["key"]  => value
# or calling on the value to get the key: hash.key(value)  => key


# # What concepts were solidified when working through this challenge?

# The concept that was solidified the most, like I mentiod above was accesssing keys and values in a hash. I definitely feel more comfortable with hashes!