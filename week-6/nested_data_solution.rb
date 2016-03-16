# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[3][0]
 p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
  p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
 p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do | number |
  if number.kind_of?(Array)
     number.map! do | n |
     n + 5
  end
   else
    number + 5
  end
end
p number_array


# Bonus:
#-------------------
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup_generator(startup_names)
  startup_names.map! do | outer_array |
    if outer_array.kind_of?(String)
       p "#{outer_array}" + "ly"
    elsif outer_array.kind_of?(Array)
       outer_array.map!  do | inner_array |
    if inner_array.kind_of?(String)
       p "#{inner_array}" + "ly"
    elsif inner_array.kind_of?(Array)
       inner_array.map! do | most_inner_array |
       p "#{most_inner_array}" + "ly"
       end
    end
    end
    end
  end
end
startup_generator(startup_names)

#Reflection
#----------------------------------------------
# What are some general rules you can apply to nested arrays?

Some general rules are, there can be any amount of nested arrays. They can contain any type and number of objects. Each nested array will correspond to the index of the array it is nested in, so let me break it down. If we have the following array:
dogs = ["golden retriever", ["labrador", ["mastiff", ["great dane","chihuahua"]],"pitbull"]]
The array 'dogs' only have 2 indexes:
dogs[0] = "golden retriever"
dogs[1] = ["labrador" ["mastiff", ["great dane",chihuahua]],"pitbull"]
So now if we want to access "mastiff" we can't access it by dogs[2], we will get an error because dogs[2] doesn't exist. Instead we will access "mastiff" by the index of each of the arrays he is nested in: dogs[1][1][0]


# What are some ways you can iterate over nested arrays?

I think that recursion will probably be the best bet here, but I know very little about it so far  to implement it. Other way is to use the method .kind_of?(Array) which checks to see if any of the elements in the iterated array evaluate to true for the passed argument,(Array in my example) so if the iterated array contains another array, your can pass a block of code to iterate over the nested array.


# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used .map! and .kind_of method that I mentiod above, we passed Array as an argument for Release:3, and for the bonus challenge we also used .kind_of?(String) method.
.map! was a good option because it modified the original array with the passed block of code, and that what the challenge required, and the .kind_of? methods were really useful when iterating over nested arrays by allowing us to pass a block of code to each element of the nested array.