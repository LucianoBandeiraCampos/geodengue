puts "begining seeds destroy"
Visit.destroy_all
User.destroy_all
Place.destroy_all

puts "all users, places and visits destroyed"

User.create!(first_name: 'Bruna', last_name: 'Guedes', email: "bruna@gmail.com", password: 123_456)
User.create!(first_name: 'Rafaela', last_name: 'Sartori', email: "rafa@gmail.com", password: 123_456)
User.create!(first_name: 'Oscar', last_name: 'Junior', email: "oscar@gmail.com", password: 123_456)
User.create!(first_name: 'Luciano', last_name: 'Campos', email: "luciano@gmail.com", password: 123_456)

puts "4 users created"

Place.create!(address: "Rua Quintino Bocaiúva 341, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 443, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 500, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 674, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Quintino Bocaiúva 840, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 240, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 299, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 312, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 377, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Paulo Tognini 429, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Ataulfo Alves 37, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Ataulfo Alves 73, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Travessa Batatais 81, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 15, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 92, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 225, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 323, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 389, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 400, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 453, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 495, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Herbert Moses 587, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Maragojipe 55, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Maragojipe 147, Campo Grande, Mato Grosso do Sul, Brasil")
Place.create!(address: "Rua Planalto 192, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 259, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 337, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 429, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 557, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 575, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 599, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 725, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Planalto 959, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 100, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 154, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 81, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 131, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 169, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 211, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 225, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 235, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 293, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 305, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 346, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 462, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 475, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 567, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 601, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Giocondo Orsi 797, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 19, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 119, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 173, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 176, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 183, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 210, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 303, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 315, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Pedro David Medeiros 329, Tv Morena, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 180, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 185, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 265, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 293, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 341, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")
Place.create!(address: "Rua Regente Feijó 485, Jardim Paulista, Campo Grande - Mato Grosso do Sul, 79050, Brasil")

puts "Places created"

users = User.all
places = Place.all

(1..11).each do |i|
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
