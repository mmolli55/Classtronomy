require 'rails_helper'

feature "User visits home page" do
  scenario "user can visit the root page and see a link to enroll" do
    visit root_path
    expect(page).to have_link('Enroll')
    click_link 'Enroll'
    expect(current_path).to eq(new_student_path)
    expect(page).to have_content('New Student Sign Up')
  end

  #   scenario "user can visit the root page and see a link to sign in" do
  #   visit root_path
  #   expect(page).to have_form('Sign In')
  # end
end
