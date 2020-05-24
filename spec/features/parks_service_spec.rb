require 'rails_helper'

describe "NPS API" do
  it "can show me information about parks" do
    visit root_path

    select "Tennessee", :from => "state"

    click_button "Find Parks"
  end
end

# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation
