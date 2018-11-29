RSpec.describe 'visit and see comedians page' do
    context 'visit comedians' do
       it 'can visit comedians' do  
        Comedian.create(name: "Cesar Chavez", age: "66", city: "San Jose")

        visit '/comedians'  
        
        expect(page).to have_content('Cesar Chavez')
        expect(page).to have_content('66')
        expect(page).to have_content('San Jose')
       end 
    end 
end 