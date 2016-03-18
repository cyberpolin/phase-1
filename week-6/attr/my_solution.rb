#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:There is no actual input, just a definition of my name inside the class
# Output:String
# Steps:
# Create 2 Slasses
# First Class is using a reader method and initializes my name.
# Second Class creates an instance of the first class with the name method and outputs
# a string containing the greeting with my name in it.

class NameData
  attr_reader :name

  def initialize
    @name = "Andrey"
  end
end

class Greetings

  def initialize
    @greeting = NameData.new.name
  end

  def hello
    puts "Hello #{@greeting}! How wonderful to see you today!"
  end
end

greet = Greetings.new
greet.hello



# Reflection
#-----------------------------------------------------------------------
#Release1:
#-----------------------------------------------------------------------
# What are these methods doing?

# These methods are initializing initial info, printing that info to the console, defining new instance variables to replace the initial info with new info, and printing th e new info to the console repectively.


# How are they modifying or returning the value of instance variables?

# By assigning the instance variables to be equal to the new passed argument when the method is called

# Release2:
#-----------------------------------------------------------------------
# What changed between the last release and this release?

# The .what_is_age method was removed, and attr_reader :age was added.


# What was replaced?

# We removed the .what_is_age method and replaced it with attr_reader :age , so now we can call .age on instance_of_profile and the result will be the same.


# Is this code simpler than the last?

# Yes. There is one less method to define and worry about.

# Release3:
#-----------------------------------------------------------------------
# What changed between the last release and this release?

# The .change_my_age method was removed and attr_writer :age was added.


# What was replaced?

# There is no need for a method with a new_age variable anymore, because we can modify the age directly thanks to attr_writer :age.


# Is this code simpler than the last?

# Yes it is. Less code overall that does the same thing more efficiently.

#Release4:
#-----------------------------------------------------------------------
# class Profile
#   attr_accessor :age, :name, :occupation

#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end

#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end
# end

# instance_of_profile = Profile.new
# puts "--- printing age -----"
# sleep 0.8
# p instance_of_profile.age

# puts "--- printing name ----"
# sleep 0.8
# p instance_of_profile.name

# puts "--- printing occupation ----"
# sleep 0.8
# p instance_of_profile.occupation

# puts "--- changing profile information ----"
# 10.times do
#   print "."
#   sleep 0.1
# end

# instance_of_profile.age = 28
# instance_of_profile.name = "Taylor"
# instance_of_profile.occupation = "Rare Coins Trader"

# puts
# puts "---- printing all profile info -----"
# sleep 0.8
# instance_of_profile.print_info


# Reflection Release 6:
#-----------------------------------------------------------------------

# What is a reader method?

# A reader method is a special attr_* method that allows you to access variables in a class, from outside of it, or from a different class. And it also looks cleaner:
# attr_reader :something
# instead of defining the method ourselves that would look like:
# def  something
#   @something
# end


# What is a writer method?

# A writer method has almost identical definition as the reader method, only instead of reading the variables it allows you to write to them, and change them.
# attr_writer :something
# and if we defined it ourselves it would be:
# def something(value)
#   @something = value
# end


# What do the attr methods do for you?

# They minimize the amount of code the you need to write, and make your life easier by not having to remember all the different methods and variables that otherwise you would have to create. Just imagine if you had to define say, 50 different writer methods, that's over 150 lines of code just for that, and it's repetitive and looks bad. Instead you can just use:
# attr_writer :variable1, :variable2, :variable3   etc....


# # Should you always use an accessor to cover your bases? Why or why not?

# An accessor is the combination of the reader and the writer methods that allows you to do both, read and write. I think it's bad practice to use this method all the time, because, for example, if your program is displaying information about movie showtimes and their dates, the user only needs to read that information. There's no need to include the writer portion of it. It just makes more sense I guess, also I'm not sure how critical it is in a small program, but I think in a program on a massive scale using only accessors will take more memory, thus decreasing performance and it will be more vulnerable, if the user could gain access and write to the variables.


# # What is confusing to you about these methods?

# There's nothing confusing about these methods.