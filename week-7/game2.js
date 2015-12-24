// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Keep your pet alive.
// Goals: Perform actions to keep your pet fed, healthy, and alive.
// Characters: Your pet.  Time.
// Objects: Your pet.  Time.
// Functions: Feed, walk, sleep.

// Pseudocode
//
//
//
//
//

// Initial Code

var pet = {
  alive: true,
  happiness: 5, // starts half happy
  hunger: 5, // starts half hungry
  sleepiness: 5, // starts half sleepy
  feed: function(){
    if (hunger <= 2){
      hunger = 0;
      time.passage_of_time;
    } else {
      hunger -= 2;
      time.passage_of_time;
    }
  },
  walk: function(){
    if happiness >= 8 {
      happiness = 10;
      time.passage_of_time;
    } else {
      happiness += 2;
      time.passage_of_time;
    }
  },
  sleep: function() {
    if (sleepiness <= 2){
      sleepiness = 0;
      time.passage_of_time;
    } else {
      sleepiness -= 2;
      time.passage_of_time;
    }
  }
};

var time = {
  passage_of_time: function() {
    pet.sleepiness += 1;
    pet.hunger += 1;
    pet.happiness -= 1;
  },
};







// Refactored Code






// Reflection
//
//
//
//
//
//
//
//