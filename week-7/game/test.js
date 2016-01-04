
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
  document.getElementById("good_hp").innerHTML = good_ninja.hitpoints;
  document.getElementById("bad_hp").innerHTML = bad_ninja.hitpoints;
  if (good_ninja.hitpoints <= 0) {
    good_ninja.alive = false;
  }
  if (bad_ninja.hitpoints <= 0) {
    bad_ninja.alive = false;
  }
  if (good_ninja.alive == true) {
    document.getElementById("good_alive").innerHTML = "ALIVE";
  } else {
    document.getElementById("good_alive").innerHTML = "DEAD";
    alert("The good ninja has been defeated!!");
  }
  if (bad_ninja.alive == true) {
    document.getElementById("bad_alive").innerHTML = "ALIVE";
  } else {
    document.getElementById("bad_alive").innerHTML = "DEAD";
    alert("The bad ninja has been defeated!!");
  }
}

round_counter = 0;
while (good_ninja.alive == true && bad_ninja.alive == true) {
  alert("You are now starting round " + (round_counter+1));
  var action1 = prompt("Please enter your 1st action for round " + (round_counter+1) + ".  Enter 'kick', 'punch', 'block_kick', or 'block_punch'.");
  var action2 = prompt("Please enter your 2nd action for round " + (round_counter+1) + ".  Enter 'kick', 'punch', 'block_kick', or 'block_punch'.");
  good_ninja.fight(action1);
  good_ninja.fight(action2);
  actions = ["kick", "punch", "block_kick", "block_punch"];
  bad_ninja.fight(actions[Math.floor(Math.random()*4)]);
  bad_ninja.fight(actions[Math.floor(Math.random()*4)]);
  fight_results();
  round_counter += 1;
};






