# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#    while true
#      puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => It is expecting a keyword end.
# 5. Where is the error in the code?
# => It says that the error is at the end of the code on line 170.
# 6. Why did the interpreter give you this error?
# => Because we didnt provide the keyword end to the while loop.
#    adding another end after line 15 fixes the error.

#--- Solution -----------------------------------------------------

def cartman_hates(thing)
   while true
     puts "What's there to hate about #{thing}?"
   end
end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 44
# 2. What is the type of error message?
# => Name Error
# 3. What additional information does the interpreter provide about this type of error?
# => It says that we used a variable or a method that wasn't defined.
# 4. Where is the error in the code?
# => On line 44, we need to define what south_park is.
# 5. Why did the interpreter give you this error?
# => Because ruby doesn't know what south_park is unless we define it.
#    giving south_park a value will fix the error.

#--- Solution -----------------------------------------------------

south_park = "TV Show"

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 64
# 2. What is the type of error message?
# => No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# => It says we have an undefined method.
# 4. Where is the error in the code?
# => On line 64 we are trying to pass an argument to a variable.
# 5. Why did the interpreter give you this error?
# => Because we didnt define cartman as a method and we are trying to
#    pass it an argument. Putting def in front of cartman and end on a new line will fix the error

#--- Solution -----------------------------------------------------

def cartman()
end

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 85
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments, expecting 0 provided 1.
# 4. Where is the error in the code?
# => On line 89 ('I hate Kyle')
# 5. Why did the interpreter give you this error?
# => Because we tried to pass an argument to a method that is not accepting arguments. So we can either remove the argument on line 89 or make the method accept one argument.

#--- Solution -----------------------------------------------------

def cartmans_phrase(argument)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 112
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments, expecting 1 provided 0.
# 4. Where is the error in the code?
# => On line 116 we don't pass an argument to the method.
# 5. Why did the interpreter give you this error?
# => Because the method is expecting an argument and we didn't provide one.
#    To fix the error we can put an offensive message as an argument for the method.

#--- Solution -----------------------------------------------------

 def cartman_says(offensive_message)
   puts offensive_message
 end

 cartman_says(" You smell like poop!")

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 140
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments, expecting 2 provided 1.
# 4. Where is the error in the code?
# => On line 144, we are missing the 2nd argument.
# 5. Why did the interpreter give you this error?
# => Because we defined a method that accepts 2 arguments but only provided 1. To fix the error we need to add the 2nd argument on line 144.

#--- Solution -----------------------------------------------------

def cartmans_lie(lie, name)
   puts "#{lie}, #{name}!"
 end

 cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'KENNY!')

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 167
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => On line 167...
# 5. Why did the interpreter give you this error?
# => Because we try to multiple a number by a string, which is imposibble, we can however multiple a string by a number and that will fix the problem.
#And we can also add puts to print that string to the console
#--- Solution -----------------------------------------------------

 puts "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 186
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => On line 186
# 5. Why did the interpreter give you this error?
# => Because we tried to divide by zero... o.O
# To fix the error just remove the division by zero part.

#--- Solution -----------------------------------------------------

amount_of_kfc_left = 20

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 207
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/Andrey/Desktop/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# => Line 207
# 5. Why did the interpreter give you this error?
# => We tried to load a file that doesn't exist.

#The solution would be to load a file that actually exist.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# -----------------------------------------------------------
# None, all the error messages were easy to read and understand.


# How did you figure out what the issue with the error was?
# -----------------------------------------------------------
# I followed the error message and looked at the way the code was written and it was pretty obvious what the error was with every example.
# I can see how it can be more chalenging with longer and more complex code.


# Were you able to determine why each error message happened based on the code?
# -----------------------------------------------------------
# Yes.


# When you encounter errors in your future code, what process will you follow to help you debug?
# -----------------------------------------------------------
# Just follow the error message and usually it's pretty obvious where the error is and why. And you can always look up the description of the error online and research the answer.