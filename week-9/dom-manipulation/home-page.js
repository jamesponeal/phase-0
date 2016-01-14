// DOM Manipulation Challenge


// I worked on this challenge with: Tiffany Larson.


// Add your JavaScript calls to this page:

// Release 0:
var releaseZero = document.getElementById('release-0');
releaseZero.className = 'done';


// Release 1:
var releaseOne = document.getElementById('release-1');
releaseOne.style.display = "none";


// Release 2:
var releaseTwo = document.querySelector('h1');
releaseTwo.textContent = "I completed release 2.";


// Release 3:
var releaseThree = document.getElementById('release-3');
releaseThree.style.background = '#955251';


// Release 4:
var releaseFour = document.getElementsByClassName('release-4');
for(var i=0; i<releaseFour.length; i++){
  releaseFour[i].style.fontSize = '2em';
}


// Release 5:

var t = document.querySelector('#hidden');
var clone = document.importNode(t.content, true);
document.body.appendChild(clone);



// REFLECTION:

// What did you learn about the DOM?
  // I learned a lot of commands that I did not know before, and in general just got more comfortable manipulating HTML elements using DOM in js files.


// What are some useful methods to use to manipulate the DOM?
  // Some useful ones are '.getElementByID', '.getElementByClassName', '.style', and 'querySelector'.

