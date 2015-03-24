require 'rails_helper'

feature 'bottles of beer' do
  it 'home page starts with 99 bottles' do
    visit '/'
    
    expect(page).to have_content('99 bottles of beer on the wall')
  end
end
