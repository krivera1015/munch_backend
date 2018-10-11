# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kevin = User.create(name: "Kevin", username: "kriv")
eric = User.create(name: "Eric", username: "eroc")

chick_fil = Restaurant.create(name: "Chic'Fila", address_1: "81 Prospect Ave", address_2: "Apt 5c", city: "Brooklyn", rating: 5, category: "Mexican")
wendy = Restaurant.create(name: "Wendys", address_1: "855 Louisiana Ave", address_2: "Apt 5B", city: "Brooklyn", rating: 2, category: "Pizza")

kevin.restaurants << chick_fil