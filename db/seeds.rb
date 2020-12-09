# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "begining seeds destroy"
Visit.destroy_all
User.destroy_all
Place.destroy_all
puts "all users, places and visits destroyed"

bruna = User.create!(email: "bruna@gmail.com", password: 123_456)
rafa = User.create!(email: "rafa@gmail.com", password: 123_456)
oscar = User.create!(email: "oscar@gmail.com", password: 123_456)
luciano = User.create!(email: "luciano@gmail.com", password: 123_456)

puts "4 users created"

casa1 = Place.create!(address: "SQSW 104 Bloco K")
casa2 = Place.create!(address: "SQSW 504 Bloco F")

puts "2 places created"

visit1 = Visit.new(state: 1, focus_quantity: 3, eliminated: true, dengue_last_3m: 0,
                   observations: "casinha do cachorro")
visit1.user = bruna
visit1.place = casa1
visit1.save

visit2 = Visit.create!(state: 2, focus_quantity: 3, eliminated: true, dengue_last_3m: 0,
                       observations: "caixa dagua", user: rafa, place: casa2)

puts "2 visits created"
