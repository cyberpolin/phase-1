// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
//============================

var myNumber = 22
console.log(myNumber * 10 + " is not my favorite number!")

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
//==============================================

var myFood = prompt("Hey, what is your favorite food?");
alert("Hey! " + myFood + " is my favorite food too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle:
//========================

for (hashTag = '#'; hashTag.length <= 7; hashTag = hashTag + '#' )
console.log(hashTag)

//=======================
//FizzBuzz:
//========================

varNum = 1
while (varNum <= 100) {
if (varNum % 3 == 0 && varNum % 5 == 0)
  console.log("FizzBuzz");
else if (varNum % 3 == 0)
  console.log("Fizz");
else if (varNum % 5 == 0)
  console.log("Buzz");
else
  console.log(varNum);
  varNum ++
}

//===============
// Functions
// Complete the `minimum` exercise.
//================

function min(a,b) {
if (a < b)
  return a;
else
return b;
}
console.log(min(90,34));

//============================
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
//==============================

var me = {name: 'Andrey', age: 31, favorite_foods: ['Bacon', 'Goat Cheese', 'Cherries'], quirk: 'I love cooking and beatboxing!'};


console.log("My name is " + me.name + " I'm " + me.age + " my favourite foods are: " + me.favorite_foods + " and " + me.quirk);


