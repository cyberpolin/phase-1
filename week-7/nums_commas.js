


/*I worked on this challenge with: Sibel Ergener

Pseudocode

input: integer
output: string
steps:
Convert integer to string
Cut up number into groups of three numbers in reverse, and assign variable to each group.
Combine all the variables together, adding a comma in between each group


Split into array of individual strings with each number as a string
Add a comma "," every third position in the array, starting from end
Turn array into a string
Display the string*/

// Initial Solution

// var separateComma = function(number) {
//    var num = number.toString();
//    var position = -3
//    var group1 = num.substr(-3,3);
//    var group2 = num.substr(-6,3);
//    var group3 = num.substr(-9,3);
//    var final =  (group3 + ',' + group2 + ',' + group1);

//   return final;
// };

// console.log(separateComma(123456789));



// Refactored Solution


var separateComma = function(number) {

  if (number < 1000)
    return number;
  var stringOfNums = number.toString();
  var splittedArray = stringOfNums.split("").reverse();
  var initialLength = splittedArray.length;
  var startIndex = 0;
  var part = "";

  while (startIndex <= splittedArray.length){
    part += (splittedArray.slice(startIndex, startIndex + 3)).join('')+',';
    startIndex += 3;
};
    part = part.split("").reverse();
  if (initialLength % 3 == 0){
    part.splice(0,2);

} else {
    part.splice(0,1);
   }
  part = part.join("");
    return part;
}

console.log(separateComma(123456789));
console.log(separateComma(12345678));
console.log(separateComma(1234567));
console.log(separateComma(123456));
console.log(separateComma(12345));
console.log(separateComma(1234));
console.log(separateComma(123));

// Reflection
//--------------------------------------------------
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Honestly, it was probably the hardest challenge for me since the beggining of DBC! I'm not sure if it was really difficult for both my pair and I, because we were new to the language or because JavaScript is just hard to grasp. It seemed like it's so much more complicated to do simple things like reversing a number, you have to go through like 3 different steps to achieve that in JavaScript, vs like one or two commands in Ruby. I think combined, we spent almost 6 hours on this challenge, and it was a very frustrating and long experience.


// What did you learn about iterating over arrays in JavaScript?

// I don't think I learned anything about that particular subject, we didn't iterate over an array, again we couldn't figure out how to do a lot of the things we wanted to, the documentation for JavaScript is VERY confusing and not user friendly compared to ruby docs.


// What was different about solving this problem in JavaScript?

// From my perspective the difference was not knowing HOW to do the things we wanted to do. I think while working on this challenge we came up with 4 diferent solutions for how to do it in ruby. And like I said earlier finding the right functions or built in methods was not a simple task.


// What built-in methods did you find to incorporate in your refactored solution?

// Our initial solution works only with 9 numbers, so in the refactored solution we kinda started from scratch and took a different approach, and the methods that we used were .slice, .split, .reverse, .join, .splice, .length and .toString