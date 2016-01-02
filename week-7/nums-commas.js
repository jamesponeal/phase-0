// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tiffany Larson.

// Pseudocode
// Create a new container.
// Remove back number from original container and add it to the front of the new container.
// Do this three times or until original container is empty.
// Check to see if the original container has any numbers left in it.
// If there are numbers left in the original container, add a comma to the front of the new container.
// Repeat until original container is empty.



// Initial Solution


// var separateComma = function(number){
//   var stringNumber = number.toString();
//   //console.log(stringNumber);
//   var oldArray = stringNumber.split("");
//   //console.log(oldArray);
//   var newArray = [];
//   var counter = 0;
//   while (oldArray.length > 0) {
//     while (counter < 3) {
//       newArray.unshift(oldArray.pop());
//       //console.log(newArray);
//       counter++;
//     }
//     if (oldArray.length == 0) {
//         finalNumber = newArray.join("");
//         console.log(finalNumber);
//     } else {
//         newArray.unshift(",");
//         //console.log(newArray);
//         counter = 0;
//     }
//   }
//   return finalNumber;
// }

// separateComma(12345678);


// Refactored Solution

var separateComma = function(number){
  var oldArray = number.toString().split("");
  var newArray = [];
  var counter = 0;
  while (oldArray.length > 0) {
    while (counter < 3) {
      newArray.unshift(oldArray.pop());
      counter++;
    }
    if (oldArray.length == 0) {
        finalNumber = newArray.join("");
        console.log(finalNumber);
    } else {
        newArray.unshift(",");
        counter = 0;
    }
  }
  return finalNumber;
}

separateComma(12345678);


// Your Own Tests (OPTIONAL)




// Reflection


// 1) What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//  I admit that I've focused so much on Ruby that I tend to think about code in Ruby. So thinking in JavaScript is more difficult for me.  While writing psuedocode I tried not to approach the problem the same, but definitely while writing code I had to think differently.

// 2) What did you learn about iterating over arrays in JavaScript?
//  I learned that the basic concept of iterating over arrays is very similar to iterating in Ruby, but the syntax is different.

// 3) What was different about solving this problem in JavaScript?
//  The concept is the same, but the syntax is different.

// 4) What built-in methods did you find to incorporate in your refactored solution?
//  .toString, .split, .unshift, and .join.  These are all methods that I was already familiar with from Ruby but hadn't used them much in JavaScript.


