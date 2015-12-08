
$cart = {
  "carrot" => 3
}

p $cart

def add_item
  puts "What would you like to add to the cart?"
  item = gets.chomp
  puts "What quantity would you like to add?"
  qty = gets.chomp
  $cart[item] = qty
end

add_item

p $cart
