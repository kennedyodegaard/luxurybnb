# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'open-uri'


Flat.destroy_all
User.destroy_all
user1 = User.create!(email: "kennedy@gmail.com", password: "password")
flat1 = Flat.new(title: "Louis' Mansion", description: "A very expensive place", location: "Barcelona", price: 36000, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file1 = URI.open('https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bHV4dXJ5JTIwcmVhbCUyMGVzdGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat1.photo.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')
flat1.save

flat2 = Flat.new(title: "Jie's Retreat", description: "A very beautiful place", location: "Madrid", price: 300, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file2 = URI.open('https://images.unsplash.com/photo-1553524790-5872ab69e309?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGx1eHVyeSUyMHJlYWwlMjBlc3RhdGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat2.photo.attach(io: file2, filename: 'flat2.png', content_type: 'image/png')
flat2.save

flat3 = Flat.new(title: "Sefi's Villa", description: "A very tranquil place", location: "Valencia", price: 250, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file3 = URI.open('https://images.unsplash.com/photo-1506126279646-a697353d3166?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bHV4dXJ5JTIwYmVhY2glMjBob3VzZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat3.photo.attach(io: file3, filename: 'flat3.png', content_type: 'image/png')
flat3.save


# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
