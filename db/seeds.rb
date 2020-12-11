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
casa3 = Place.create!(address: "Rua Presidente Tancredo Neves, 21 Viçosa, MG")

puts "3 places created"

Visit.create!(state: 2, observations: "caixa dagua", user: rafa, place: casa2)
Visit.create!(state: 1, focus_quantity: 1, eliminated: true, dengue_last_3m: false, observations: 'pneus no quintal', user: rafa, place: casa1)
Visit.create!(state: 0, observations: "retornar posteriormente", user: rafa, place: casa3)
Visit.create!(state: 1, focus_quantity: 0, eliminated: false, dengue_last_3m: false, observations: "tudo ok", user: rafa, place: casa3)

puts "4 visits created"
