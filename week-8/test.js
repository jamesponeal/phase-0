
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



var gradebook = {};
// gradebook.Joseph = {testscores: scores[0]};
// gradebook.Susan = {testscores:scores[1]};
// gradebook.William = {testscores:scores[2]};
// gradebook.Elizabeth = {testscores:scores[3]};



for (var x=0; x < students.length; x++) {
  gradebook[students[x]]={testScores:scores[x]};
};

console.log(gradebook);

gradebook.addScore = function(name, score){
  gradebook[name]["testScores"].push(score);
};

gradebook.addScore('Susan',100);

console.log(gradebook);

gradebook.getAverage = function(){

};










