# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
Item.destroy_all

10.times do 
    User.create(
        first_name: Faker::Name.first_name,
        middle_name: Faker::Name.middle_name, 
        last_name: Faker::Name.last_name, 
        user_name: Faker::Name.first_name,
        profile_image: "https://as2.ftcdn.net/jpg/02/15/84/43/500_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg"
    )
end

50.times do 
    Item.create(
        name: Faker::Hipster.word,
        price: Faker::Commerce.price
    )
end 



# User.create({
#     name: "Dominic",
#     profile_image: ""
# })

Cart.create({
    user_id: User.first,
    current_cart: true
})

# Item.create({
#     name: "Rice",
#     price: 10.00
# })

CartItem.create({
    cart_id: Cart.first, 
    item_id: Item.first,
    quantity: 1
})

