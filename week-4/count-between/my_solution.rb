# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers == []
  int = 0
    for  num in list_of_integers
      if num >= lower_bound && num <= upper_bound
        int += 1
      end
    end
  return int
end
puts count_between([15,30,45], 20, 59)