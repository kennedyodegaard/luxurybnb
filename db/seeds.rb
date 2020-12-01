# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Flat.destroy_all

flat1 = Flat.new(user_id: , title: "Louis' Mansion", description: "A very expensive place", location: "Barcelona", price: 36000)
flat1.save
flat2 = Flat.create(title: "Jie's Retreat", description: "A very beautiful place", location: "Madrid", price: 300)
flat3 = Flat.create(title: "Sefi's Villa", description: "A very tranquil place", location: "Valencia", price: 250)

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
