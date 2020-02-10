require 'rails_helper'


# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# And I should see a list of the 21 members of the Order of the Phoenix for house Gryffindor.
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)

RSpec.describe "Visting Gryffindor" do
  it "can show existing members of Gryffindor" do
    visit "/"

    select "Gryffindor", from: :house

    click_button('Search For Members')
    expect(current_path).to eq('/search')

    expect(page).to have_content('Total Order of the Pheonix members: 21')
    expect(page).to have_content('Name: Harry Potter')
    expect(page).to have_content('House: Gryffindor')
    expect(page).to have_content('Role: student')
    expect(page).to have_content('Patronus: stag')

  end
end
