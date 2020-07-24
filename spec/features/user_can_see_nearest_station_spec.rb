require 'rails_helper'

describe "As a user" do
  scenario "I can find the closest electric fuel station and the travel info" do
    visit '/'
    page.select('Turing')
    click_on("Find Nearest Station")
    expect(current_path).to eq('/search')
    within ('.name') do
      expect(page).to have_content('Seventeenth Street Plaza')
    end
    within ('.address') do
      expect(page).to have_content('1225 17th St. Denver, CO')
    end
    within ('.fuel-type') do
      expect(page).to have_content('ELEC')
    end
    within ('.access-times') do
      expect(page).to have_content('MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified')
    end
    within ('.distance') do
      expect(page).to have_content('0.1 miles')
    end
    within ('.travel-time') do
      expect(page).to have_content('1 minute(s)')
    end
    within ('.directions') do
      expect(page).to have_content('Start out going southeast on 17th St toward Larimer St/CO-33.')
    end
  end
end
