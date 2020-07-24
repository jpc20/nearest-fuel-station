require 'rails_helper'

describe "As a user" do
  scenario "I can find the closest electric fuel station" do
    visit '/'
    page.select('Turing')
    click_on("Find Nearest Station")
    expect(current_path).to eq('/search')
  end
end
