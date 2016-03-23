# Virus Predictor

# I worked on this challenge [with:Danny Jovic].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#gains access to the specified file outside of the scope of our program
# require_relative gives access to a file that is located in the same folder as the running program
# require - has to have a full path to the file.
#
# require_relative 'state_data'

# class VirusPredictor
#   # creating instance variables that will be used used in the class

#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end
#   # calls other 2 methods within the class

#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

# the private method makes all the code below it unaccessable to the user.
#   private

# # new method that iterates through population density and determines a variable called number_of_deaths.  Then prints out a string that calls the state and the number of deaths variable.
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
#  # new method that iterates over the population density and outputs a new variable called speed. Then puts a string with the speed variable inside.
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# def all_states
#     STATE_DATA.each do |state_name, data_hash|
#       state = VirusPredictor.new(state_name, data_hash[:population_density], data_hash[:population])
#       state.virus_effects
#     end
# end
# all_states
#=======================================================================
# REFACTORED SOLUTION!
#=======================================================================
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @speed_factor = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}
    @death_factor = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
  end

  def virus_effects
    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end

  private

  def speed
    return 2.5 if @population_density < 50
    @speed_factor.keys.each do |density| # density: 200, 150, 100, 50
      return @speed_factor[density] if @population_density >= density
    end
  end

  def number_of_deaths
    return @population * 0.05 if @population_density < 50
    @death_factor.keys.each do | density | # keys 200, 150 , 100, 50
      return @population * @death_factor[density] if @population_density >= density
    end
  end
end


def all_states
    STATE_DATA.each do |state_name, data_hash|
      state = VirusPredictor.new(state_name, data_hash[:population_density], data_hash[:population])
      state.virus_effects
    end
end

all_states

#=======================================================================
# Reflection Section
#=====================

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The main difference is the first hash has a string as a key and another hash as the value, and the second hash has symbols as keys and integers as values.

# What does require_relative do? How is it different from require?

# -require_relative allows you to access a file directly by the file name, without specifying the exact path to the file, only if that file is located in the same directory as the program you are running.
# -require will have to have the exact path to the file you want to use in your program, and that file can be loacated anywhere on your computer.

# What are some ways to iterate through a hash?

# One way to iterate through a hash is the .each method. You then provdie two variables to use in you iteration one as the key and one as the value. hash.each { |key, value| your code here }.

# Another way is to use .keys.each this method will only iterate through the hash using the keys and only accessing the value if we define that. Example:
# hash = { 'A' => 0.1, 'B' => 0.2, 'C' => 0.3}
# hash.keys.each { |key|
#   number = hash[key] * 2
#   p number
# }

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# The main thing that stood out was that the method virus_effects was calling two other methods inside and passing them instance variables as arguments which is unnecessary. Those arguments are already initialized and defined in the class so just by calling the method name would be enough to access them.

# What concept did you most solidify in this challenge?

# I think the main concepts that I solidified were how to access and manipulate a nested hash, and also how to properly refactor a working code to make more sense, be more readable and less repetitive.
# It is still challenging at times, but I feel that I'm getting better at it each time!