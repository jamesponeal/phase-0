var counter = 1;
var subcounter = 1;
var size = 10;
var hash = "#";
var space = " ";
var x = "";
while (counter < size+1) {
  subcounter = 1;
  x = ""
  if (counter % 2 != 0) {
    while (subcounter < size+1) {
      if (subcounter % 2 != 0)
        x = x + hash
      else
        x = x + space
      subcounter += 1;
    };
  } else {
    while (subcounter < size+1) {
      if (subcounter % 2 != 0)
        x = x + space
      else
        x = x + hash
      subcounter += 1;
    };
  };
  console.log(x)
  counter += 1;
};