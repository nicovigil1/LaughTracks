RSpec.describe 'visit and see comedians page' do
    context 'visit comedians' do
       it 'can visit comedians' do  
        visit '/comedians'    

        expect(page).to have_content('Cesar Chavez')
        expect(page).to have_content('66')
        expect(page).to have_content('Denver')
       end 
    end 
end 