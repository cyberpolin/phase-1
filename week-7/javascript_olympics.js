 // JavaScript Olympics

// I paired [with:Chand Nirankari] on this challenge.

// This challenge took me [2] hours.



// // Bulk Up


var athletes = [{name: 'Michael Jordan', event: 'Basketball Championship'}, {name: 'Lionel Messi', event: 'Soccer Cup'}, {name: 'Muhammad Ali', event: 'Boxing Match'}];


athletes.forEach(function(array_member){
  array_member.win = function(){  //function expression
    console.log(this.name + ' won the ' + this.event);
  }
  array_member.win();
});




var win = function(person){ // function declaration
  console.log(person.name + ' won the ' + person.event);
}

athletes.forEach(function(array_member){

   win(array_member);

});



// Jumble your words

var backwards = function(word) {

  var theWord = word.split("").reverse();
  var joinedWord = theWord.join("");
  return joinedWord;
}

console.log(backwards("hello"));


// 2,4,6,8


var even = function(array) {
  var evenArray = []
  for (var counter = 0; counter < array.length; counter++) {
    if ((array[counter] % 2) === 0) {

       evenArray.push(array[counter]);

  }
 }
  return evenArray;
}

console.log(even([1,2,3,4,5,6,7,8,10]));





// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.age + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
//============================================
// What JavaScript knowledge did you solidify in this challenge?
//=============================================

// I solidified array iteration and loops, and feel more comfortable overall with the language.

// What are constructor functions?
//=================================

// Basically when you call a function with the keyword 'new' in front of it, causes it to be treated as a constructor. example:
// function Dog(breed) {
//   this.breed = breed;
// }

// var fluffy = new Dog("Bulldog");
// console.log(fluffy.breed);


// How are constructors different from Ruby classes (in your research)?
//========================================

//Form the bit of research that I did it looks  like they are almost identical to each other. The main difference is in the prototype function in javascript, which I'm still trying to understand.