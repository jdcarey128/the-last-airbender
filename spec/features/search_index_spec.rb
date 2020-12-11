require 'rails_helper'

RSpec.describe 'As a visitor' do  
  describe 'when I visit the welcome page and select Fire Nation' do 
    it 'I am redirected to the index where I see the name of a member, their photo, a list of allies and enemies, and affiliation' do
      visit root_path 
      find('#nation').find(:option, 'Fire Nation').select_option 
      click_button 'Search For Members'
      
      expect(current_path).to eq(search_path)
      expect(page).to have_css('.member', count: 97)
      
      within '#character-5cf5679a915ecad153ab6906' do 
        expect(page).to have_content('Circus master')
        expect(page).to have_xpath("//img[@src='https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819']")
        expect(page).to have_content('Ty Lee')
        expect(page).to have_content('Appa')
        expect(page).to have_content('Fire Nation circus')
      end
    end
  end
end 
