# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # define a method that genreates a random letter from the word bingo, and a random number 1 through 100.

# Check the called column for the number called.
  #B would be equal to index 0 of each nested array
  #I would be equal to index 1 of each nested array
  #N would be equal to index 2 of each nested array
  #G would be equal to index 3 of each nested array
  #O would be equal to index 4 of each nested array
  # iterate through the arrays to see if the random number is equal to the number in the corrseponding index

# If the number is in the column, replace with an 'x'
  # if the random number is equal to number in the column, replace that number with 'X'

# Display a column to the console
# print all the numbers of the same index as the generated letter to the console with the 'X'

# Display the board to the console (prettily)
#print all the arrays to the board with the replaced number



# Initial Solution
#-------------------------------------------------------
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     letters = [:B,:I,:N,:G,:O]
#     @random_letter = letters.shuffle[0]
#     @random_number = rand(1...100)
#     combined = @random_letter.to_s + " " + @random_number.to_s
#     puts combined
#   end

#   def check
#     case @random_letter
#     when :B
#     @bingo_board.each do | item |
#       if item[0] == @random_number
#          item[0] = "X"
#       end
#        p item[0]
#     end
#    when :I
#     @bingo_board.each do | item |
#       if item[1] == @random_number
#          item[1] = "X"
#       end
#        p item[1]
#     end
#    when :N
#     @bingo_board.each do | item |
#       if item[2] == @random_number
#          item[2] = "X"
#       end
#        p item[2]
#     end
#    when :G
#     @bingo_board.each do | item |
#       if item[3] == @random_number
#          item[3] = "X"
#       end
#        p item[3]
#     end
#    when :O
#     @bingo_board.each do | item |
#       if item[4] == @random_number
#          item[4] = "X"
#       end
#        p item[4]
#      end
#     end
#        @bingo_board.each do |item|
#        p item
#     end
#   end
# end

# board = [[47, 44, 71, 8 , 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# bingo = BingoBoard.new(board)
# bingo.call
# bingo.check

# Refactored Solution
# --------------------------------------------------------------
class BingoBoard

  def initialize(board)
    @letters = [:B,:I,:N,:G,:O]
    @bingo_board = board
  end

  def call #generates random number an letter and puts the combined result to the console
    @random_letter = @letters.shuffle[0]
    @random_number = rand(1..75) # updated the random numbers to reflect the legal bingo board
    combined = @random_letter.to_s + " " + @random_number.to_s
    puts combined
  end

  def letter_index # this method returns a number equal to the index of the random letter, so to access that number I just have to call for the method letter_index
    return @letters.index(@random_letter)
  end

  def check #checks each row at the index, gethered from letter_index method and replaces the corresponding number of that index with 'X' if that number is equal to the random number, and then prints that row. and prints the updated board.
    @bingo_board.each do |row|
      row[letter_index] = 'X' if row[letter_index] == @random_number
      p row[letter_index]
    end
    puts
    @bingo_board.each do | board |
      p board
    end
  end

  def bingo? # checks to see if we have a bingo, meaning 5 * 'X' in a row or in a column.
    counter = 0
    @bingo_board.each do | row |
      row_bingo = row.count('X')
      if row_bingo == 5
        counter = 5
        break
      end
      counter += 1 if row[letter_index] == 'X'
    end
    return counter == 5 # this makes the method #bingo? return true when counter equals to 5
  end

  def run #runs the call and check methods and returns true when #bingo? returns true
    call
    check
    return bingo?
  end

   def play_the_game # keeps running the game until #bingo? is true meaning we have a bingo!
    we_have_bingo = false
    until we_have_bingo
      we_have_bingo = run
      puts
      puts "!!!◊-◊-◊ B·I·N·G·O ◊-◊-◊!!!" if we_have_bingo #it will print the bingo message when we_have_bingo is true, and it will be true when #run is true, and #run will be true when bingo? is true! :)
    end
    end
  end

  def legal_board_creator #optional method that creates a legal bingo board.
    legal_board = [[],[],[],[],[]]
    legal_board.each do | number |
    number << rand(1..15) << rand(16..30) << rand(31..45) << rand(46..60) << rand(61..75)
  end
    legal_board[2][2] = "Ø"
    legal_board.each { | item | p item }
end


bingo = BingoBoard.new(legal_board_creator)
bingo.play_the_game


#Reflection
#----------------------------------------------------------------

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# It wsn't difficult to pseudocode for this challenge but it was a little weird since in the challenge instructions, there was already an initial pseudocde outline, so I felt like i was almost repeating the same thing. My pseudocoding style probably needs more work, it's something that is challenging for me mentally, to lay out the solution out in words. I feel like if I have a basic idea of what needs to be done, it's good enough for me. And then once I start coding I get different ideas based on the code and I like doing trial and error, write some code, see if and how it works, and then either keep it or change it.


# # What are the benefits of using a class for this challenge?

# First of all it keeps all the code for running the bingo board neatly organized into methods.
# You have the ability to create your own methods and apply them to the board, just like I did with my refactored solution and added the legal_board_creator method and the  method that prints BINGO!!! if there are 5 'X's present. To do that without using a class would make the code hard to read and not as structured.

# # How can you access coordinates in a nested array?

# You can access the coordinates by providing the index of each array. For example if you have a simple nested array: colors = [['red','blue','green'],['black','grey','white']] to access the color black you would type: colors[1][0] so index 1 in the most outer array which is
# ['black','grey','white'] and then index 0 in that array which is 'black'.


# # What methods did you use to access and modify the array?

# I used #shuffle, to modify the array of letters and randomize them, so i can get a random letter each time.
# #index method to get the index of the of the random letter, as a single number.
# #each method a few times to itterate over the array.
# #count method to count the number of accurances of the string 'X' in the array.


# # Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# The only new method that I learned while doing this challenge was #index, and based on Ruby docs
# it gives you the first corresponding index to which the passed argument is equal in the array. For example:
# animals = ['dog','horse','cat']
# animals.index(cat) would return 2 because that is the only occurance of 'cat', but if our array was:
# animals = ['dog','cat',horse','cat']
# animals.index(cat) would return 1 because that is the first corresponding index to which the passed arguments is equal.


# # How did you determine what should be an instance variable versus a local variable?

# Very simple, any variable that I had to access outside of the method where it was created would be an instance variable, and any variable that only needed to be accessed inside the method where it was created would be a local variable.

# # What do you feel is most improved in your refactored solution?

# I eliminated the need to do the case statment from my initial solution by making a method that checks for the index of the random letter, and then I can just use that mehtod as an argument further in the program, it looks much cleaner and nicer.
#   And I personally really enjoyed adding the legal board method and my own optional method that checks if there is an actual bingo on the board and prints it out!
#   Overall the game makes more sense, versus the initial solution where it just runs once and replaces the number with an 'X' if the number is there.