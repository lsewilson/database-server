require 'spec_helper'

feature 'Database site' do

  scenario 'allows user to set and find keys and values' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200
    expect(current_path).to eq "/get"

    visit '/get?test_key'
    expect(page).to have_content "test_value"
  end

  scenario 'allows user to set multiple keys and values' do
    visit '/set?first_key=first_value'
    visit '/set?second_key=second_value'

    visit '/get?first_key'
    expect(page.status_code).to eq 200
    expect(page).to have_content "first_value"

    visit '/get?second_key'
    expect(page.status_code).to eq 200
    expect(page).to have_content "second_value"
  end

end
