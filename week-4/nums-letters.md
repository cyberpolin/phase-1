# 4.2 Reflection

##What does puts do?

The command puts, returns nil and prints the output to the console followed by a new line.

##What is an integer? What is a float?

An Integer is a whole number like '22' or '741' <br>
A Float is a decimal number like '4.7' or '53.19'

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference is, if you divide an integer by another integer, for example **50 / 11** you will only get a whole number as a result. Or in other words, how many times **11** fits in **50**? So the result will be **4**. But if you make the **50** a float by adding **.0** to it:<br> **50.0 / 11** the result will be the whole number followed by **15** numbers after the decimal point: **4.545454545454546** <br>
You will get the same result if you divide a float by a float: **22.8 / 3.9 = 5.846153846153847** unless ofcourse the result is a whole number, it will just be followed by a zero after the decimal point like: **8.8/2.2 = 4.0**<br>
While testing I stumbled upon a different scenario, when the result was only three numbers after the decimal point like this:<br> **7.9 / 4 = 1.975** and honestly I'm not sure why. So if someone has a simple explanation to this I would love to hear it.

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

I think that Ruby handles it just like a regular calculator, with the exception of division of integers and floats as I described above.

##What are strings? Why and when would you use them?

Strings are a groups of characters inside a program, they must be in quotes to be considered a string: **"Hello"** is a string, and so is **"$$##%%123ABC"**.
You would use strings to relay information from the program to the user of the program.
In ruby you can convert data into a string by using .to_s method.

##What are local variables? Why and when would you use them?

Local Variables are a place holder for a certain type of data or information in a block of code. You would use them to store a certain information for the program's needs.

##How was this challenge? Did you get a good review of some of the basics?

This challenge was a good refresher for Ruby basics, and I feel more comfortable moving forward.

###Mini Cahallenge: Hours in a year.

```ruby

hours = 24
days = 365
puts "There are #{ hours * days } hours in a year!"

```
###Mini Challenge: Minutes in a decade.

```ruby

minutes = 60
hours = 24
days = 365
years = 10
puts "There are #{ minutes * hours * days * years } minutes in a decade!"

```
###Exercises:

[Defining Variables](https://github.com/Aslonski/phase-0/blob/master/week-4/defining-variables.rb) <br>
[Simple String](https://github.com/Aslonski/phase-0/blob/master/week-4/simple-string.rb)<br>
[Basic Math](https://github.com/Aslonski/phase-0/blob/master/week-4/basic-math.rb)