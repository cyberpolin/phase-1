# Method to create a list
# input:  string - beer, soda, water, vodka, wine
# steps:
  # create a list using a hash
  # qty: beer - 1, soda - 1, water - 1, vodka - 1, wine - 1
  # print the list
# output:hash

def new_list(items)
  list = Hash.new(1)
  items.split.each do |drink|
    list[drink] = 1
  end
  return list
end

list = new_list("beer soda water vodka wine")

# Method to add an item to a list
# input: adding new items (drink, qty) -> (key, value)
# steps:
    # adding the drink and qty to the list
# output: new list will have added drink and qty

def add_item(original_list, new_drink, qty)
  original_list[new_drink] = qty
end

add_item(list, "Orange Juice", 1)
add_item(list, "Apple Juice", 1)
#p list

# Method to remove an item from the list
# input:the item that we want to remove  and where to remove from.
# steps: remove the item from the list
# output:updated list without the removed item

def remove_item(og_list, drink)
  og_list.delete(drink)
end

remove_item(list,"water")

#p list

# Method to update the quantity of an item we skipped this because it's the same as add_item method as far as code.
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input: the list itself
# steps:
  # go through the list and print each item on its own line
# output: Pretty list with drink and qty on each line by themselves

def pretty_list(og_list)
  og_list.each { |drink, qty| puts "#{drink}, #{qty}"}
end

pretty_list(list)

#What did you learn about pseudocode from working on this challenge?

# I learned that pseudocode is there to help YOU understand your initial idea and solution and then translate that into actual code. There are basic guidelines for pseudocode, but there's no right or wrong, whatever helps you to write the code! And to keep it simple and basic!

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# At first we had to convert the initial string into an array so we could itterate over each item, but then using an array we could'nt define a value to the items so we had to add the items to a hash and assign them a value.

# What does a method return?

# A method will return whatever you define it to return.


# What kind of things can you pass into methods as arguments?

# You can pass strings, integers, floats, some variables, and probably more things that I don't know about just yet. :)


# How can you pass information between methods?

# By defining a variable outside of a method, that is equal to the input of that method, and then passing that variable as an argument on a different method.


# What concepts were solidified in this challenge, and what concepts are still confusing?

# I feel much more comfortable using hashes after this challenge, and I'm still a bit confused about the whole concept of calling methods on other methods.

