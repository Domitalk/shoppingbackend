# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create({
    name: "Dominic",
    profile_image: ""
})

Cart.create({
    user_id: User.first,
    current_cart: true
})

Item.create({
    name: "Rice",
    price: 10.00
})

CartItem.create({
    cart_id: Cart.first, 
    item_id: Item.first,
    quantity: 1
})

