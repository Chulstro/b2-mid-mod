# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
park_1 = AmusementPark.create(name: "Wally World", price: 30)
mechanic_1 = Mechanic.create(name: "Johnny Apple", experience: 13)
ride_1 = park_1.rides.create(name: "Wing Flyer", rating: 7)
ride_2 = park_1.rides.create(name: "Lovely Floof", rating: 3)
ride_3 = park_1.rides.create(name: "The Nightmare", rating: 10)

RideMechanic.create(ride_id: ride_1.id, mechanic_id: mechanic_1.id)
RideMechanic.create(ride_id: ride_2.id, mechanic_id: mechanic_1.id)
