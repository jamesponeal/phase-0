 // JavaScript Olympics

// I paired with: Tiffany Larson on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

var athlete = {
  name: "Sarah Hughes",
  events: "Ladies' Singles"
}

var win = function(object) {
  object.win = console.log(object.name + " won the " + object.events);
}

win(athlete);


// Jumble your words

var reverse = function(string) {
  var newArray = string.split("").reverse();
  var finalString = newArray.join("")
  console.log(finalString);
}

reverse("Jim is awesome");


// 2,4,6,8

var evenNum = function(array) {
  var newArray = [];
  for (i=0; i<array.length; i++) {
    if (array[i] % 2 == 0){
      newArray.push(array[i]);
    }
  }
  console.log(newArray);
}

var array = [1,2,3,4,5,6,7,8,9];
evenNum(array);


// "We built this city"

function Athlete(){
  this.name = "";
  this.age = 0;
  this.sport = "";
  this.quote = "";
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// 1) What JavaScript knowledge did you solidify in this challenge?
//  This challenge helped me solidify using functions and objects together.  Also using the constructor notation for objects.  This is still a little confusing to me, but I think I'm making it more complicated in my head than it really is.

// 2) What are constructor functions?
//  A constructor function is a way of defining an object in JavaScript.  An instance of a defined constructor function can be created and manipulated.

// 3) How are constructors different from Ruby classes (in your research)?
//  From what I have read, constructor functions operate very similarly to classes in Ruby.  There are of course differences in how they are called, created, manipulated, and accessed, but I think the general concept between the two of them are very close.


