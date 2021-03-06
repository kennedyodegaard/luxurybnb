# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'open-uri'
Review.destroy_all
Reservation.destroy_all
Flat.destroy_all
User.destroy_all
# User 1 #################################################################################################################################################################################################################################################################################
user1 = User.create!(email: "kennedy@gmail.com", password: "password")
flat1 = Flat.new(title: "Louis' Mansion", description: "The mansion is a staggering 11,000 square feet and features only the finest finishings. There are several outdoor and indoor fireplaces, his and hers baths with ocean views, a chef’s kitchen perfect for professional catering, and a swimming pool and fully-equipped spa.", location: "Barcelona", price: 36000, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file1 = URI.open('https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bHV4dXJ5JTIwcmVhbCUyMGVzdGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat1.photo.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')
flat1.save

flat2 = Flat.new(title: "Jie's Retreat", description: "This massive Private Resort describes itself as the “epitome of modern luxury” and comes complete with all the facilities you’d expect of a five-star hotel, with none of the inconveniences like the general public and untimely room service.", location: "Madrid", price: 300, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file2 = URI.open('https://images.unsplash.com/photo-1553524790-5872ab69e309?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGx1eHVyeSUyMHJlYWwlMjBlc3RhdGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat2.photo.attach(io: file2, filename: 'flat2.png', content_type: 'image/png')
flat2.save

flat3 = Flat.new(title: "Sefi's Villa", description: "Designed by world famous architect Santiago Calatrava. Indoors, aside from the seven bedrooms, you’ll also have access to a movie theatre, gym, dance club, bowling alley, and wine cellar. If you can tear yourself away from all that, head outside and you’ll find a tennis court, playground area for the children, large terrace, and a swimming pool.", location: "Valencia", price: 250, guests: 3, bedrooms: 3, bathrooms: 3, user: user1)
file3 = URI.open('https://images.unsplash.com/photo-1506126279646-a697353d3166?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bHV4dXJ5JTIwYmVhY2glMjBob3VzZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
flat3.photo.attach(io: file3, filename: 'flat3.png', content_type: 'image/png')
flat3.save

# User 2 #################################################################################################################################################################################################################################################################################
user2 = User.create!(email: "sefi@gmail.com", password: "password")
flat4 = Flat.new(title: "Elegant Manor", description: "This gorgeous home is fully loaded with a ballroom, a pool, a tennis court, and fully integrated compost system. The property is pegged as the ideal destination for corporate events, family reunions, and lavish destination weddings. There are 11 bedrooms and 13 baths that can accommodate up to two dozen overnight guests, but the 30 acre property will more than suffice for a bigger function. There’s also a crew of staff on hand to help you out with your special event — for an added fee.", location: "Madrid", price: 6000, guests: 8, bedrooms: 12, bathrooms: 14, user: user2)
file4 = URI.open('https://images.unsplash.com/photo-1568391300292-a5a1d96b82aa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=928&q=80')
flat4.photo.attach(io: file4, filename: 'flat4.png', content_type: 'image/png')
flat4.save

flat5 = Flat.new(title: "A Princess's Golden Palace", description: "Ideal for princess gatherings, this gorgeous home has everything a princess could wish for. Golden thrones and unicorns included!Guests have access to the entire property, which includes 10 bedroom suites, multiple living rooms, a huge dining room with frescoes, a professional kitchen and a rooftop terrace. There’s also a pool overlooking the surrounding vineyards and olive groves.", location: "Murcia", price: 3200, guests: 6, bedrooms: 7, bathrooms: 8, user: user2)
file5 = URI.open('https://images.unsplash.com/photo-1561753757-d8880c5a3551?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
flat5.photo.attach(io: file5, filename: 'flat5.png', content_type: 'image/png')
flat5.save
# User 3 #################################################################################################################################################################################################################################################################################
user3 = User.create!(email: "malik@gmail.com", password: "password")
flat6 = Flat.new(title: "Secluded in Casablanca", description: "This modern masterpiece is fully loaded with amazing amenities. Rumor has it that Michael Phelps used the pool to practice for the Olympics. Nicole Kidman rents it every winter for a relaxing week. Grab it before it's too late! ", location: "Casablanca", price: 17000, guests: 6, bedrooms: 6, bathrooms: 6, user: user3)
file6 = URI.open('https://images.unsplash.com/photo-1558240894-9821078a16a9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80')
flat6.photo.attach(io: file6, filename: 'flat6.png', content_type: 'image/png')
flat6.save

flat7 = Flat.new(title: "Chateau Marmont", description: "Simple and quiet castle perfect for writing novels, family gatherings, and ample opportunities to garden. Relax in the swimming pool, play some tennis or bocce on the private courts, and stroll through the private gardens.", location: "Madrid", price: 30000, guests: 13, bedrooms: 9, bathrooms: 8, user: user3)
file7 = URI.open('https://images.unsplash.com/photo-1540198837344-2d1edd9e4eb8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80')
flat7.photo.attach(io: file7, filename: 'flat7.png', content_type: 'image/png')
flat7.save
# User 4 #################################################################################################################################################################################################################################################################################
user4 = User.create!(email: "avalon@gmail.com", password: "password")
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
