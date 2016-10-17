require 'spec_helper'

feature 'setting keys and values' do

  scenario 'allows user to set key values' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Data stored successfully'
  end

end
