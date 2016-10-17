require 'spec_helper'

feature 'setting keys and values' do

  scenario 'allows user to set keys and values' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Data stored successfully'
  end

end

feature 'getting keys and values' do

  before do
    visit '/set?test_key=test_value'
  end 

  scenario 'allows user to retrieve keys and values' do
    visit '/'
    fill_in 'key', with: 'test_key'
    click_button 'Get data'

    expect(current_path).to eq '/get?key=test_key'
    expect(page).to have_content 'test_value'
  end
end
