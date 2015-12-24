// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat the enemy ninja.
// Goals: Choose attacks to defeat the enemy ninja before he defeats you.
// Characters: You, the good ninja.  Your opponent, the bad ninja.
// Objects: Good ninja.  Bad ninja.
// Functions: Kick, punch, block a kick, block a punch.

//   The game will be played in rounds.  Each round, each ninja will peform 2 actions
//   from the available four actions.  Any damage caused by a kick or punch will be
//   reduced or eliminated if the target ninja attempts to block the kick or punch.
//   When the number of hit points of one ninja reaches zero, that ninja is defeated.
//   Luckily, the 'good' ninja has an advantage... he is an expert at blocking, the
//   more the good ninja blocks, the better they get at it!

// PSEUDOCODE:
//  Create a 'good ninja' and 'bad ninja' object.
//    - Assign properties: hitpoints, alive?, damage, and blocking.
//  Create a function for attacking for each ninja.
//  Create a function for the combat to take place between the two ninjas.
//  Create a while loop that makes the ninjas fight until one of them is defeated.


// INITIAL SOLUTION:

// var good_ninja = {
//   hitpoints: 50,
//   alive: true,
//   kick_damage: 0,
//   punch_damage: 0,
//   block_kick: 0,
//   block_punch: 0,
//   reset: function(){
//     good_ninja.kick_damage = 0;
//     good_ninja.punch_damage = 0;
//     good_ninja.block_kick = Math.round(good_ninja.block_kick/3);
//     good_ninja.block_punch = Math.round(good_ninja.block_punch/3);
//   },
//   fight: function(type){
//     if (type == "kick")
//       good_ninja.kick_damage += Math.floor(Math.random() * 10) + 5;
//     else if (type == "punch")
//       good_ninja.punch_damage += Math.floor(Math.random() * 10) + 5;
//     else if (type == "block_kick")
//       good_ninja.block_kick += Math.floor(Math.random() * 10) + 5;
//     else if (type == "block_punch")
//       good_ninja.block_punch += Math.floor(Math.random() * 10) + 5;
//   }
// };

// var bad_ninja = {
//   hitpoints: 50,
//   alive: true,
//   kick_damage: 0,
//   punch_damage: 0,
//   block_kick: 0,
//   block_punch: 0,
//   reset: function(){
//     bad_ninja.kick_damage = 0;
//     bad_ninja.punch_damage = 0;
//     bad_ninja.block_kick = 0;
//     bad_ninja.block_punch = 0;
//   },
//   fight: function(type){
//     if (type == "kick")
//       bad_ninja.kick_damage += Math.floor(Math.random() * 10) + 5;
//     else if (type == "punch")
//       bad_ninja.punch_damage += Math.floor(Math.random() * 10) + 5;
//     else if (type == "block_kick")
//       bad_ninja.block_kick += Math.floor(Math.random() * 10) + 5;
//     else if (type == "block_punch")
//       bad_ninja.block_punch += Math.floor(Math.random() * 10) + 5;
//   }
// };

// function fight_results() {
//   if (good_ninja.kick_damage >= bad_ninja.block_kick) {
//     bad_ninja.hitpoints -= (good_ninja.kick_damage - bad_ninja.block_kick);
//   };
//   if (good_ninja.punch_damage >= bad_ninja.block_punch) {
//     bad_ninja.hitpoints -= (good_ninja.punch_damage - bad_ninja.block_punch);
//   };
//   if (bad_ninja.kick_damage >= good_ninja.block_kick) {
//     good_ninja.hitpoints -= (bad_ninja.kick_damage - good_ninja.block_kick);
//   };
//   if (bad_ninja.punch_damage >= good_ninja.block_punch) {
//     good_ninja.hitpoints -= (bad_ninja.punch_damage - good_ninja.block_punch);
//   };
//   // console logs are for testing purposes...
//   // console.log("Good Ninja Kick Damage: " + good_ninja.kick_damage)
//   // console.log("Good Ninja Punch Damage: " + good_ninja.punch_damage)
//   // console.log("Good Ninja Block Kick: " + good_ninja.block_kick)
//   // console.log("Good Ninja Block Punch: " + good_ninja.block_punch)
//   // console.log("Bad Ninja Kick Damage: " + bad_ninja.kick_damage)
//   // console.log("Bad Ninja Punch Damage: " + bad_ninja.punch_damage)
//   // console.log("Bad Ninja Block Kick: " + bad_ninja.block_kick)
//   // console.log("Bad Ninja Block Punch: " + bad_ninja.block_punch)
//   bad_ninja.reset();
//   good_ninja.reset();
//   console.log("Good Ninja Hit Points: " + good_ninja.hitpoints);
//   console.log("Bad Ninja Hit Points: " + bad_ninja.hitpoints);
//   if (good_ninja.hitpoints <= 0) {
//     console.log ("The good ninja has been defeated!!");
//     good_ninja.alive = false;
//   }
//   if (bad_ninja.hitpoints <= 0) {
//     console.log ("The bad ninja has been defeated!!");
//     bad_ninja.alive = false;
//   }
// }

// round_counter = 0;
// while (good_ninja.alive == true && bad_ninja.alive == true) {
//   console.log("~~~~~~~");
//   console.log("Round " + (round_counter+1));
//   actions = ["kick", "punch", "block_kick", "block_punch"];
//   good1 = actions[Math.floor(Math.random()*4)]
//   good2 = actions[Math.floor(Math.random()*4)]
//   good_ninja.fight(good1);
//   good_ninja.fight(good2);
//   bad1 = actions[Math.floor(Math.random()*4)]
//   bad2 = actions[Math.floor(Math.random()*4)]
//   bad_ninja.fight(bad1);
//   bad_ninja.fight(bad2);
//   // console logs are for testing purposes...
//   // console.log("Good Ninja Action 1: " + good1);
//   // console.log("Good Ninja Action 2: " + good2);
//   // console.log("Bad Ninja Action 1: " + bad1);
//   // console.log("Bad Ninja Action 2: " + bad2);
//   fight_results();
//   round_counter += 1;
// };


// FINAL SOLUTION:

var good_ninja = {
  hitpoints: 50,
  alive: true,
  kick_damage: 0,
  punch_damage: 0,
  block_kick: 0,
  block_punch: 0,
  reset: function(){
    good_ninja.kick_damage = 0;
    good_ninja.punch_damage = 0;
    good_ninja.block_kick = Math.round(good_ninja.block_kick/3);
    good_ninja.block_punch = Math.round(good_ninja.block_punch/3);
  },
  fight: function(type){
    if (type == "kick")
      good_ninja.kick_damage += Math.floor(Math.random() * 10) + 5;
    else if (type == "punch")
      good_ninja.punch_damage += Math.floor(Math.random() * 10) + 5;
    else if (type == "block_kick")
      good_ninja.block_kick += Math.floor(Math.random() * 10) + 5;
    else if (type == "block_punch")
      good_ninja.block_punch += Math.floor(Math.random() * 10) + 5;
  }
};

var bad_ninja = {
  hitpoints: 50,
  alive: true,
  kick_damage: 0,
  punch_damage: 0,
  block_kick: 0,
  block_punch: 0,
  reset: function(){
    bad_ninja.kick_damage = 0;
    bad_ninja.punch_damage = 0;
    bad_ninja.block_kick = 0;
    bad_ninja.block_punch = 0;
  },
  fight: function(type){
    if (type == "kick")
      bad_ninja.kick_damage += Math.floor(Math.random() * 10) + 5;
    else if (type == "punch")
      bad_ninja.punch_damage += Math.floor(Math.random() * 10) + 5;
    else if (type == "block_kick")
      bad_ninja.block_kick += Math.floor(Math.random() * 10) + 5;
    else if (type == "block_punch")
      bad_ninja.block_punch += Math.floor(Math.random() * 10) + 5;
  }
};

function fight_results() {
  if (good_ninja.kick_damage >= bad_ninja.block_kick) {
    bad_ninja.hitpoints -= (good_ninja.kick_damage - bad_ninja.block_kick);
  };
  if (good_ninja.punch_damage >= bad_ninja.block_punch) {
    bad_ninja.hitpoints -= (good_ninja.punch_damage - bad_ninja.block_punch);
  };
  if (bad_ninja.kick_damage >= good_ninja.block_kick) {
    good_ninja.hitpoints -= (bad_ninja.kick_damage - good_ninja.block_kick);
  };
  if (bad_ninja.punch_damage >= good_ninja.block_punch) {
    good_ninja.hitpoints -= (bad_ninja.punch_damage - good_ninja.block_punch);
  };
  bad_ninja.reset();
  good_ninja.reset();
  console.log("Good Ninja Hit Points: " + good_ninja.hitpoints);
  console.log("Bad Ninja Hit Points: " + bad_ninja.hitpoints);
  if (good_ninja.hitpoints <= 0) {
    console.log ("The good ninja has been defeated!!");
    good_ninja.alive = false;
  }
  if (bad_ninja.hitpoints <= 0) {
    console.log ("The bad ninja has been defeated!!");
    bad_ninja.alive = false;
  }
}

round_counter = 0;
while (good_ninja.alive == true && bad_ninja.alive == true) {
  console.log("~~~~~~~");
  console.log("Round " + (round_counter+1));
  actions = ["kick", "punch", "block_kick", "block_punch"];
  good_ninja.fight(actions[Math.floor(Math.random()*4)]);
  good_ninja.fight(actions[Math.floor(Math.random()*4)]);
  bad_ninja.fight(actions[Math.floor(Math.random()*4)]);
  bad_ninja.fight(actions[Math.floor(Math.random()*4)]);
  fight_results();
  round_counter += 1;
};


// REFLECTION:
//
// 1) What was the most difficult part of this challenge?
// This entire challenge was difficult for me.  Part of the difficulty was coming up
// with an idea that was simple enough for me to do with my limited JavaScript. I kept
// coming up with things that involved complicated classes which I didn't know how to
// do in JavaScript.  So correlating my Ruby tools to the tools I know how to use in
// JavaScript was one of my main challenges.

// 2) What did you learn about creating objects and functions that interact with one another?
// The concept of objects and functions interacting in JavaScript is similar to the
// concept of methods and variables interacting in Ruby.  So really I learned to be
// more comfortable with JavaScript language and the syntax. Semi-colons and curly
// braces everywhere.

// 3) Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I searched for some built in JavaScript methods I could use to simplify and shorten
// my code, but could not find much.  I was able to combine a few lines in several
// places though.


// 4) How can you access and manipulate properties of objects?
// By calling the object and property name and modifying it or reassigning it using
// the following method: object_name.property_name = new_value;
//
