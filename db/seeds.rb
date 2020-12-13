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

# casa1 = Place.create!(address: "SQSW 104 Bloco K")
# casa2 = Place.create!(address: "SQSW 504 Bloco F")
# casa3 = Place.create!(address: "Rua Presidente Tancredo Neves, 21 Viçosa, MG")

end1 = Place.create!(address: "Rua Quintino Bocaiúva 341, Campo Grande, Mato Grosso do Sul, Brasil")
end2 = Place.create!(address: "Rua Quintino Bocaiúva 443, Campo Grande, Mato Grosso do Sul, Brasil")
# end3 = Place.create!(address: "Rua Quintino Bocaiúva 500, Campo Grande, Mato Grosso do Sul, Brasil")
# end4 = Place.create!(address: "Rua Quintino Bocaiúva 674, Campo Grande, Mato Grosso do Sul, Brasil")
# end5 = Place.create!(address: "Rua Quintino Bocaiúva 840, Campo Grande, Mato Grosso do Sul, Brasil")
end6 = Place.create!(address: "Rua Paulo Tognini 299, Campo Grande, Mato Grosso do Sul, Brasil")
end7 = Place.create!(address: "Rua Paulo Tognini 312, Campo Grande, Mato Grosso do Sul, Brasil")
# end8 = Place.create!(address: "Rua Paulo Tognini 429, Campo Grande, Mato Grosso do Sul, Brasil")
# end9 = Place.create!(address: "Rua Paulo Tognini 583, Campo Grande, Mato Grosso do Sul, Brasil")
end10 = Place.create!(address: "Rua Ataulfo Alves 74, Campo Grande, Mato Grosso do Sul, Brasil")
end11 = Place.create!(address: "Rua Ataulfo Alves 73, Campo Grande, Mato Grosso do Sul, Brasil")
# end12 = Place.create!(address: "Travessa Batatais 81, Campo Grande, Mato Grosso do Sul, Brasil")
# end13 = Place.create!(address: "Rua Herbert Moses 92, Campo Grande, Mato Grosso do Sul, Brasil")
# end14 = Place.create!(address: "Rua Herbert Moses 225, Campo Grande, Mato Grosso do Sul, Brasil")
end15 = Place.create!(address: "Rua Herbert Moses 389, Campo Grande, Mato Grosso do Sul, Brasil")
end16 = Place.create!(address: "Rua Herbert Moses 453, Campo Grande, Mato Grosso do Sul, Brasil")
# end17 = Place.create!(address: "Rua Herbert Moses 495, Campo Grande, Mato Grosso do Sul, Brasil")
# end18 = Place.create!(address: "Rua Herbert Moses 587, Campo Grande, Mato Grosso do Sul, Brasil")
# end19 = Place.create!(address: "Rua Maragojipe 55, Campo Grande, Mato Grosso do Sul, Brasil")
# end20 = Place.create!(address: "Rua Maragojipe 147, Campo Grande, Mato Grosso do Sul, Brasil")

puts "Places created"

2.times do
  Visit.create!(state: 'ausente', user: oscar, place: end1, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end2, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end6, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end7, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end10, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end11, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end15, data: Time.now)
  Visit.create!(state: 'ausente', user: oscar, place: end16, data: Time.now)
end

2.times do
  Visit.create!(state: 'visita_realizada', user: oscar, place: end1, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  Visit.create!(state: 'visita_realizada', user: oscar, place: end2, focus_quantity: 0, eliminated: true, dengue_last_3m: false, data: Time.now)
  # Visit.create!(state: 'visita_realizada', user: oscar, place: end6, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  # Visit.create!(state: 'visita_realizada', user: oscar, place: end7, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  Visit.create!(state: 'visita_realizada', user: oscar, place: end10, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  Visit.create!(state: 'visita_realizada', user: oscar, place: end11, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  Visit.create!(state: 'visita_realizada', user: oscar, place: end15, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
  Visit.create!(state: 'visita_realizada', user: oscar, place: end16, focus_quantity: 1, eliminated: true, dengue_last_3m: false, data: Time.now)
end

2.times do
  Visit.create!(state: 'visita_recusada', user: oscar, place: end1, data: Time.now)
  Visit.create!(state: 'visita_recusada', user: oscar, place: end2, data: Time.now)
  # Visit.create!(state: 'visita_recusada', user: oscar, place: end6, data: Time.now)
  # Visit.create!(state: 'visita_recusada', user: oscar, place: end7, data: Time.now)
  # Visit.create!(state: 'visita_recusada', user: oscar, place: end10, data: Time.now)
  # Visit.create!(state: 'visita_recusada', user: oscar, place: end11, data: Time.now)
  Visit.create!(state: 'visita_recusada', user: oscar, place: end15, data: Time.now)
  # Visit.create!(state: 'visita_recusada', user: oscar, place: end16)
end

# Visit.create!(state: 'visita_realizada', focus_quantity: 1, eliminated: true, dengue_last_3m: false, observations: 'pneus no quintal', user: rafa, place: casa1, data: Time.now)
# Visit.create!(state: 'ausente', observations: "retornar posteriormente", user: rafa, place: casa3, data: Time.now)
# Visit.create!(state: 'visita_realizada', focus_quantity: 0, eliminated: false, dengue_last_3m: false, observations: "tudo ok", user: rafa, place: casa3, data: Time.now)

puts "4 visits created"
