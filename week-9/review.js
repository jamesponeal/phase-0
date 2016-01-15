// PSEUDOCODE:
  // This program will create a shopping list.
  // Add item:
    // Accept a name and quantity.  Add name and quantity to the shopping list.
  // Remove item:
    // Remove name and quantity from the shopping list.
  // Change qty:
    // Change quantity of a given item in the shopping list.


// INITIAL SOLUTION:


// var shoppingList = {};

// addItem = function (item_to_add, qty_to_add) {
//   shoppingList[item_to_add] = qty_to_add;
// }

// removeItem = function (item) {
//   delete shoppingList[item];
// }

// updateQty = function (item, newQty) {
//   shoppingList[item] = newQty;
// }

// printlist = function(){
//   console.log("Here is your current shopping list:");
//   console.log(shoppingList);
// }






// FINAL SOLUTION:

var shoppingList = {};

addItem = function (item_to_add, qty_to_add) {
  shoppingList[item_to_add] = qty_to_add;
}

removeItem = function (item) {
  delete shoppingList[item];
}

updateQty = function (item, newQty) {
  shoppingList[item] = newQty;
}

printlist = function(){
  console.log("Here is your current shopping list:");
  console.log(shoppingList);
}


addItem("milk", 1);
addItem("eggs", 2);
addItem("banana", 3);
addItem("beer", 12);
printlist();
removeItem("banana");
printlist();
updateQty("beer", 24);
printlist();

