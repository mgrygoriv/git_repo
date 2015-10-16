
require_relative "item_container"
require_relative "item"
require_relative "cart"
require_relative "real_item"
require_relative "virtual_item"

item1 = RealItem.new({name: "Name1", price: 100, weight: 10 })
puts "item1"
p item1
item1.info {|attr| puts attr}

item2 = VirtualItem.new
puts "item2"
item2.price = 200
item2.name = "Name2"
p item2

item3 = RealItem.new
puts "Item3="
p item3


item1.test
puts "item1" + " Test--------"

item2.test
puts "item2" + " Test--------"


cart = Cart.new
cart.add_item item1
cart.add_item item2
p cart
cart.validate

cart.delete_invalid_items
p cart

p cart.items

puts item1.respond_to?(:weight)
puts item2.respond_to?(:weight)

puts Item.discount
puts VirtualItem.discount
puts item1.price
puts item2.price

print "item1.tax="
puts item1.price

print "item2.tax="
puts item2.price