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

    # expect(response).to be_successful
    # parsed = JSON.parse(response.body, symbolize_names: true)

    select "Gryffindor", from: :house

    click_button('Search For Members')

    expect(current_path).to eq('/search')
    expect(page).to have_content('Total house members: 21')
  end
end
