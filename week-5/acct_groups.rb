# I paired with Lisa Dannewitz on this challenge.

# Pseudocode
#--------------
# Input = array
# Output = 2d array
# Steps: take random names from the list and put them in groups of 3 to 5 people
# and then remove those names from the original list.
# IF the list has 5 people or less, make one group
# Make as many groups of 5 as possible
#   UNLESS the remaining is less than 3 if it is go to next step
# Make as many groups of 4 as possible
#   UNLESS the remaining is less than 3 if it is make 2 groups of 3
# print the groups to the console and give each group of names a group number.
#---------------------------------------------------------------------------

def account_group(list)
  shuffled = list.shuffle
  sorted_list = []
  return list if list.length <= 5
  while shuffled.length % 5 >= 3 || shuffled.length % 5 == 0
    sorted_list << shuffled.slice!(0..4)
    break if shuffled.length < 5
  end
  while shuffled.length % 4 >= 3 || shuffled.length % 4 == 0
    sorted_list << shuffled.slice!(0..3)
    break if shuffled.length < 4
  end
  while shuffled.length > 0
    sorted_list << shuffled.slice!(0..2)
  end
  sorted_list.reject { |a| a.empty? }
  sorted_list.each_with_index { |a, i|
    puts "Group #{i + 1}: " + a.join(", ")
    puts
   }
end

account_group(["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson","Alex Wen", "Alicia Briceland", "Allison Paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "David Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bek", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"])

#Reflection:
#------------------------------------------------------------------

#What was the most interesting and most difficult part of this challenge?

# The most interesting AND the most difficult part was, the fact that this challenge was open ended, meaning there were no particular guidelines or rspec test to follow, we were given a task and it was entirely up to us to figure it out and to make it our own.


# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# Yes, I definitely feel more confident writing better pseudocode and I know, the more I do it, the better I will become.


# Was your approach for automating this task a good solution? What could have made it even better?

# I think we did a solid job making this task automated. Each time you run the code, the list is automaticly randomized, so we get different groups every time, and it breaks the list down into groups by running a comparison loop.
# What we could improve is to make the program prefer groups of 4 over groups of 3 in terms of: if we have a list of 8 people it would make 2 groups of 4 rather than a group of 5 and a group of 3.


# What data structure did you decide to store the accountability groups in and why?

# We used an array, because there is no need for a key:value combination since it is just a list of names, and we ended up outputting the groups as strings to make it look pretty and easier to read.


# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# We learned that there is always a way to better your code, and we used a new enumerable method .each_with_index to make the output look pretty by seperating the initial 2d array, by the index of the nested arrays and printing them out nicely seperated by commas.