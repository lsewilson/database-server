require 'spec_helper'

feature 'setting keys and values' do

  scenario 'allows user to set and find keys and values' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200
    expect(current_path).to eq "/get"

    visit '/get?test_key'
    expect(page).to have_content "test_value"
  end

end
