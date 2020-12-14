puts "begining seeds destroy"
Visit.destroy_all
User.destroy_all
Place.destroy_all

puts "all users, places and visits destroyed"

User.create!(email: "bruna@gmail.com", password: 123_456)
User.create!(email: "rafa@gmail.com", password: 123_456)
User.create!(email: "oscar@gmail.com", password: 123_456)
User.create!(email: "luciano@gmail.com", password: 123_456)

puts "4 users created"

Place.create!(address: "Rua Quintino Bocaiúva 341, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 443, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 500, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 674, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 840, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 299, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 312, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 429, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 583, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Ataulfo Alves 74, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Ataulfo Alves 73, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Travessa Batatais 81, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 92, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 225, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 389, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 453, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 495, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 587, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Maragojipe 55, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Maragojipe 147, Campo Grande, Mato Grosso do Sul, Brasil")

puts "20 Places created"

users = User.all
places = Place.all

(1..4).each do |i|
  places.each do |place|
    state = ['ausente', 'visita_realizada', 'visita_recusada'].sample
    if state == 'visita_realizada'
      focus_quantity = rand(2)
      if focus_quantity.zero?
        Visit.create!(state: state, focus_quantity: focus_quantity, dengue_last_3m: [false, true].sample, observations: "tudo ok", user: users.sample, place: place, data: i.weeks.ago)
      else
        Visit.create!(state: state, focus_quantity: focus_quantity, eliminated: [false, true].sample, dengue_last_3m: [false, true].sample, observations: "presença de foco", user: users.sample, place: place, data: i.weeks.ago)
      end
    else
      Visit.create!(state: state, user: users.sample, place: place, data: i.weeks.ago)
    end
  end
end

puts "Visits created"
