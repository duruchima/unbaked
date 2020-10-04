# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bakery.destroy_all
Order.destroy_all

User.create(first_name: "Duncan", last_name: "Uruchima", username: "duruchima", email: "duncan@email.com", age:27, zip_code: 11111)
User.create(first_name: "Johnson", last_name: "Kow", username: "JohnsonNYC", email: "johnballs@email.com", age:30, zip_code: 22222)


Bakery.create(name:"Chocnyc", address:"4996 Broadway, New York, NY 10034")
Bakery.create(name:"Orwashers Bakery", address:"308 E 78th St, New York, NY 10075")
Bakery.create(name:"Levain Bakery", address:"167 W 74th St, New York, NY 10023")
Bakery.create(name:"Two Little Red Hens", address:"1652 2nd Ave, New York, NY 10028")

Order.create(user_id:User.all.sample.id, bakery_id:Bakery.all.sample.id, price:'9.00', dough:)
Order.create(user_id:User.all.sample.id, bakery_id:Bakery.all.sample.id, price:'5.00', dough:)

Dough.create(name: "Sourdough", rating: "5 Stars",difficulty: "easy", bake_time: "short" )
Dough.create(name: "Pumpernickel", rating: "4 Stars",difficulty: "medium", bake_time: "medium" )



