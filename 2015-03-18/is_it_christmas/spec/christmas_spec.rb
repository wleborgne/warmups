require 'rails_helper'

feature 'IsItChristmas' do
  it 'displays Yes on December 25' do
    allow_any_instance_of(Time).to receive(:month) { 12 }
    allow_any_instance_of(Time).to receive(:day) { 25 }
    
    visit '/'
    expect(page).to have_content('Yes')
  end
  
  it 'displays No on any other date' do
    visit '/'
    expect(page).to have_content('No')
  end
end
