require 'rails_helper'


describe "A user can search for nearby electric and propane gas stations" do
  scenario "when a user fills in a zipcode they see a list of the 10 closest statsions within 6 miles sorted by distance" do

    visit root_path

    fill_in  #zipcode with 80203

    click_on "Locate"

    expect(current_path).to eq("/search/80203")
    expect(page).to have_content("The 10 closest stations within six miles are:")
    # expect(page).to have_content("stations.first.name")
    # expect(page).to have_content("stations.first.address")
    # expect(page).to have_content("stations.first.fuel_types")
    # expect(page).to have_content("stations.first.distance")
    # expect(page).to have_content("stations.first.access_times") 
  end
end


# ```As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times```
