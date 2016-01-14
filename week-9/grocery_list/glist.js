// PSEUDOCODE:
  // This program will create a shopping list.
  // Add item:
    // Accept a name and quantity.  Add name and quantity to the shopping list.
  // Remove item:
    // Remove name and quantity from the shopping list.
  // Change qty:
    // Change quantity of a given item in the shopping list.


// INITIAL SOLUTION:


var shoppingList = {};


var addButton = document.getElementById("add-button");


function updateDOM() {
  document.getElementById("item-to-add").innerHTML = item_to_add;
  document.getElementById("qty-to-add").innerHTML = qty_to_add;
}

addButton.onclick = shoppingList.addItem(item_to_add, qty_to_add);

addItem = function (item_to_add, qty_to_add) {
  shoppingList[item_to_add] = qty_to_add;
}



removeItem = function (item) {
  delete shoppingList[item];
}

updateQty = function (item, newQty) {
  shoppingList[item] = newQty;
}









// FINAL SOLUTION:



