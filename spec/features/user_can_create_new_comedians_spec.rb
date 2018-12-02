RSpec.describe 'User can create new comedians' do
    it 'can view a form on comedian/new' do
        visit '/comedians/new'

        expect(page).to have_css('.new-comedian')
    end 

    it 'can fill in the new comedians form' do 
        visit '/comedians/new'

        fill_in 'comedian[name]', with: 'Nico Vigil'
        fill_in 'comedian[age]', with: 21
        fill_in 'comedian[city]', with: 'Denver, CO'
        click_button 'Submit'
        
        expect(current_path).to eq('/comedians')
        expect(page).to have_content('Nico Vigil')
    end 
end 