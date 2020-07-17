require 'rails_helper'

RSpec.describe "When I visit an Amusement park show page" do
  before :each do
    @park_1 = AmusementPark.create(name: "Wally World", price: 30)
    park_2 = AmusementPark.create(name: "Woof Woof", price: 70)
    @ride_1 = @park_1.rides.create(name: "Wing flyer", rating: 7)
    @ride_2 = @park_1.rides.create(name: "Lovely Floof", rating: 3)
    @ride_3 = park_2.rides.create(name: "haha", rating: 7)
  end

  it "I see all of it's basic info" do
    visit "/parks/#{@park_1.id}"

    expect(page).to have_content(@park_1.name)
    expect(page).to have_content(@park_1.price)
    expect(page).to have_content(@ride_1.name)
    expect(page).to have_content(@ride_2.name)
    expect(page).to have_content("Thrill Rating: 5")
  end

end
