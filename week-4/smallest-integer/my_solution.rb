# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  return nil if list_of_nums == []
  min = list_of_nums[0]
  for num in list_of_nums
    if num < min
      min = num
    end
  end
  return min
end
  puts smallest_integer([16, 4, -7])