require 'spec_helper'

describe "the letter creation" do

  it "creates a new letter" do
    visit new_letter_path

      fill_in "letter_body", with: "Test body"
      fill_in "letter_address_line1", with: "Test address_line1"
      fill_in "letter_address_line2", with: "Test address_line2"
      fill_in "letter_city", with: "Test city"
      fill_in "letter_state", with: "Test state"
      fill_in "letter_zip", with: "10H1H1"
      fill_in "letter_country", with: "Test country"

      click_button "Next"

    expect(page).to have_content "Success"
  end
end
