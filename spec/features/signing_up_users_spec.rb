require 'rails_helper'

RSpec.feature "signup users" do
  
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "user@example.com"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    
    expect(page).to have_content("You have signed up successfully")
    
  end
  
  scenario "with invalid credentials" do 
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: ""
    fill_in "password", with: ""
    fill_in "password_confirmation", with: ""
    click_button "Sign up"
    
   # expect(page).to have_content("You have not signed up successfully")
  end
end