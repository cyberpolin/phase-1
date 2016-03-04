# Factorial

# I worked on this challenge [ with: Dominick Lombardo ].

# Your Solution Below
def factorial(number)
  return 1 if number == 0
  total = 1
 until number == 1
   total = number * total
   number -= 1
 end
return total
end
 puts factorial(10)