require 'rails_helper'

RSpec.describe AmusementPark, type: :model do
  describe "relationships" do
    it {should have_many :rides}
  end

  describe "methods" do
    it ".thrill_avg" do
      park_1 = AmusementPark.create(name: "Wally World", price: 30)
      mechanic_1 = Mechanic.create(name: "Johnny Apple", experience: 13)
      ride_1 = park_1.rides.create(name: "Wing Flyer", rating: 7)
      ride_2 = park_1.rides.create(name: "Lovely Floof", rating: 3)

      RideMechanic.create(ride_id: ride_1.id, mechanic_id: mechanic_1.id)
      RideMechanic.create(ride_id: ride_2.id, mechanic_id: mechanic_1.id)

      expect(park_1.thrill_avg).to eq(5)
    end
  end
end
