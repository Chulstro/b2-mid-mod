require 'rails_helper'

RSpec.describe "When I visit the mechanics index page" do
  it "has a header and all mechanics info" do
    mechanic_1 = Mechanic.create(name: "Johnny Apple", experience: 13)
    mechanic_2 = Mechanic.create(name: "Sam Morna", experience: 12)
    visit "/mechanics"

    expect(page).to have_content("All Mechanics")
    expect(page).to have_content("#{mechanic_1.name} - #{mechanic_1.experience} years")
    expect(page).to have_content("#{mechanic_2.name} - #{mechanic_2.experience} years")
  end
end
