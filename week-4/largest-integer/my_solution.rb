# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  return nil if list_of_nums == []
  min = list_of_nums[0]
  for num in list_of_nums
    if num > min
      min = num
    end
  end
  return min
end
  puts largest_integer([24, -98, 0])
