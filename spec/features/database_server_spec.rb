require 'spec_helper'

feature 'creating a new database server' do
  scenario 'allows user to create a new database server' do
    visit '/'
    click_button "Create new database"
    expect(page.status_code).to eq 200
  end
end

feature 'setting keys and values' do

  before do
    visit '/'
    click_button "Create new database"
  end

  scenario 'allows user to set and find keys and values' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200

    visit '/get?test_key'
    expect(page).to have_content "test_value"
  end

end
