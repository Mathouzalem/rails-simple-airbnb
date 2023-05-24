# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating appartement...'
bauby = { name: 'Chez Bauby', address: '7 Boundary St, London E2 7JE', description: 'Magnifique petit appartement donnant sur la tamise', price_per_night: 200, number_of_guests: 3 }
villa = { name: 'Villa East', address: '56A Shoreditch High St, London E1 6PQ', description: 'Très belle villa qui fait rêver', price_per_night: 124, number_of_guests: 5 }
mathou = { name: 'Chez Mathou', address: 'Euratechnologies, Lebois Leblanc', description: 'Très pratique car proche des entreprises et restaurants', price_per_night: 156, number_of_guests: 2 }
home = { name: 'Home', address: 'Zone commerciale Farman, 51100 Reims', description: 'On se croit à la maison dans cette appartement Home', price_per_night: 50, number_of_guests: 2 }
palazio = { name: 'palazio', address: '156 rue des mouchards, 75005 Paris', description: 'Un vrai palace parisien', price_per_night: 900, number_of_guests: 10 }

[bauby, villa, mathou, home, palazio].each do |attributes|
  restaurant = Flat.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
