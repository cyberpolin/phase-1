 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:

// Overall mission:Create a simplified version of Roulette.

// Goals:Place bets, win money or lose money.

// Characters:The Player

// Objects:Player(cash), chosennumber(null), bet(null)

// Functions:
// roulette - wraps the entire code to run the game on click
// spinRoulette - random number generator
// betNumber - takes the user's input on what number to bet on
// betAmount - takes the user's input on the amount to bet
// keepGoing - asks the user if they want to try again or quit.




// Pseudocode
//=========================================================

// Create 'Player' object with coins property = 1000, chosen Number property = null, bet property = null.

// Prompt for a bet number
// IF
//   bet number is NaN or undefined alert with a message
// ELSE IF
//   bet number is bigger than 36, alert with a differernt message
// ELSE IF
//   bet number is less that zero, alert with a different message
// ELSE
//   move to the next function bet amount.
// prompt for the bet amount and repeat the IF/ELSE IF/ELSE like the one
// above. Just comparing the bet amount and the player's coins.

// Display a message that shows the winning(random) number and the
// player's bet number and amount.
// Compare the bet number and the radnom number
// IF
//   they are equal, player wins, bet amount is muliplied by 8 and added
//    to player's coins
// ELSE
//   player loses, bet amount is deducted from player's coins, when
//   player's coins are less or equal to 0 game is over.
//   prompt if the player wants to try again


// Initial Code
//==========================================================


function roulette() {
  var player = {
    coins: 1000,
    chosenNumber: null,
    bet: null
  };

  var spinRoulette = function(){
    return Math.floor((Math.random()*36));
  }

  function betNumber() {
    player.chosenNumber = null;
    player.bet = null;
    player.chosenNumber = prompt("Please choose a number between 0 and 36 to bet on");
    if (player.chosenNumber) {  // player.chosenNumber has some value
      var message = null;
      player.chosenNumber = parseInt(player.chosenNumber, 10);
      if (isNaN(player.chosenNumber) || player.chosenNumber === undefined) {
        message = "Now that is definitely NOT a number...";
      } else if (player.chosenNumber > 36) {
        message = "Why don't you just burn your money instead...?";
      } else if (player.chosenNumber < 0) {
        message = "You can't bet on a negative number silly!";
      };
      if (message) {
        alert(message);
        keepGoing();
      } else {
        betAmount();
      };
    } else // player.chosenNumber is null (user pressed Cancel in prompt of line 15)
      keepGoing();
  };

  function betAmount(){
    player.bet = prompt("You have " + player.coins + " coins available.\n How much would you like to bet?");
    if (player.bet) { // player.bet has some value
      var message = null;
      player.bet = parseInt(player.bet, 10);
      if (isNaN(player.bet) || player.bet === undefined) {
        message = "STOP testing me and tell me how much you want to bet! Please?";
      } else if (player.bet > player.coins) {
        message = "Really? How about you play with what you have!";
      } else if (player.bet < 0 ) {
        message = "WHAT?! HOW?! I can't even... Just place a normal bet would you?";
      };
      if (message){
        alert(message);
        keepGoing();
      } else {
        alert("Thank You! No more bets!")
      };
    } else // player.bet is null (user pressed Cancel in prompt of line 37)
      keepGoing();

    var winning_number = spinRoulette();
    alert("The Roulette gods has spoken, the winning number is: " +  winning_number + "\n" + "You bet " + player.bet + " coins, on " + player.chosenNumber);
    if (winning_number == player.chosenNumber){
      var winnings = player.bet * 8;
      player.coins += winnings;
      alert("HOLY GUACAMOLE!!! WE HAVE A WINNER!!!" + "\n" +
        "YOU JUST WON " + winnings + " COINS!!!");
      keepGoing();
    } else {
      player.coins -= player.bet;
      if (player.coins <= 0) {
        alert("You spent everything you had on gambling, maybe you should take a break.\n Farewell!");
        return false;
      } else {
        alert("Oh well, better luck next time right?");
        keepGoing();
      };
    };
  };


  function keepGoing() {
    if (confirm("Would you like to try again?")) {
      betNumber();
    } else {
      throw new Error("GAME OVER!"); // game over
    };
  };

  betNumber();
};



// Reflection
// ==================================================

//What was the most difficult part of this challenge?

// The most difficult part was trying to get all the logic right, and figure out how to implement the game into html so I can get user input.
//  This entire proccess was very tedious, especially the debugging part
//  fixing the random errors, and A LOT of researching and spending most of
//   my week in w3schools.com
//  I think overall I spent over 12 hours on this challenge, but I'm very
//  happy with the result, considering I had no idea how to do anything in
//  JavaScript 6 days ago!


// What did you learn about creating objects and functions that interact with one another?

// I learned that if you want to makea complex, elaborate program then it is pretty much essential to make your code communicate with itself and manipulate the data inside of it as it runs. It took me some time to figure out the best ways to have a variable be available to use inside a function that was declared before or after the variable, or to have a function manipulate the value of a property of an object. But it all makes more sense now.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

//I did not learn any new methods, honestly I spent so much time trying to make the initial solution to work the way I wanted, I had to change and edit the code on the fly. So after my initial solution was finally working as intended I really had not much left in me to try and rewrite a refactored solution.


// How can you access and manipulate properties of objects?

//The way I did it in my program was the dot notation, basically if i needed to add or remove some value from a property of my player object I would use: player.coins to access the coins property and then assign it a new value i.e - player.coins += winnings.


