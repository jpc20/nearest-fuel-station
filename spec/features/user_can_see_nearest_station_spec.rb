require 'rails_helper'

describe "As a user" do
  scenario "I can find the closest electric fuel station and the travel info" do
    visit '/'
    page.select('Turing')
    click_on("Find Nearest Station")
    expect(current_path).to eq('/search')
    within ('.name') do
      expect(page).to have_content('')
    end
    within ('.address') do
      expect(page).to have_content('')
    end
    within ('.fuel-type') do
      expect(page).to have_content('')
    end
    within ('.access-times') do
      expect(page).to have_content('')
    end
    within ('.distance') do
      expect(page).to have_content('')
    end
    within ('.travel-time') do
      expect(page).to have_content('')
    end
    within ('.directions') do
      expect(page).to have_content('')
    end
  end
end
