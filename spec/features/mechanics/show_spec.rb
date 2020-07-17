require 'rails_helper'

RSpec.describe "When I visit a mechanic show page" do
  it "I see their info" do
    park_1 = AmusementPark.create(name: "Wally World", price: 30)
    mechanic_1 = Mechanic.create(name: "Johnny Apple", experience: 13)
    ride_1 = park_1.rides.create(name: "Wing Flyer", rating: 7)
    ride_2 = park_1.rides.create(name: "Lovely Floof", rating: 3)
    ride_3 = park_1.rides.create(name: "The Nightmare", rating: 10)

    RideMechanic.create(ride_id: ride_1.id, mechanic_id: mechanic_1.id)
    RideMechanic.create(ride_id: ride_2.id, mechanic_id: mechanic_1.id)

    visit "/mechanics/#{mechanic_1.id}"

    expect(page).to have_content(mechanic_1.name)
    expect(page).to have_content(mechanic_1.experience)
    expect(page).to have_content("Wing Flyer")
    expect(page).to have_content("Lovely Floof")

    fill_in :ride_id, with: ride_3.id
    click_on "Submit new Ride"

    expect(current_path).to eq("/mechanics/#{mechanic_1.id}")
    expect(page).to have_content(ride_3.name)
  end
end
