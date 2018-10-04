require 'faker'

 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
    restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_name,
      # type: Faker::Restaurant.type,
      phone_number: Faker::PhoneNumber.phone_number,
      description: Faker::Restaurant.description,   #=> "We are committed to using the finest ingredients in our recipes. No food leaves our kitchen that we ourselves would not eat."
      )

      mi = MenuItem.create(restaurant_id: restaurant.id,name:'Caesar Salad',price: 8.00)

      MenuItem.create(restaurant_id: restaurant.id,name:'Crab Cakes',price: 9.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Carmelized Onion Dip',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Fried Squid',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'French Onion Soup',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Tacos',price: 9.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Tamales',price: 4.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Mozzarella Sticks',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Burger Deluxe w. Fries',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Steak & Rice',price: 13.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Carmelized Onion Dip',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Fried Calamarie',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Chick Pea Soup',price: 8.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Grilled Basil Chicken & Tomatoes',price: 13.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Monterey Sausage Pie',price: 11.00)
      MenuItem.create(restaurant_id: restaurant.id,name:'Chicken-and-Brisket Brunswick Stew',price: 8.00)


end
     # user = User.create(first_name: santiago, last_name: sendon )
     # review
