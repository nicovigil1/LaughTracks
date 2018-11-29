RSpec.describe 'User can visit and see comedians page' do
    context 'visit comedians' do
       it 'can visit and view comedians' do  
            Comedian.create(name: "Cesar Chavez", age: "66", city: "San Jose")

            visit '/comedians'  
            
            expect(page).to have_content('Cesar Chavez')
            expect(page).to have_content('66')
            expect(page).to have_content('San Jose')
       end

       it 'places comedians in their own div' do
            Comedian.create(name: "Cesar Chavez", age: "66", city: "San Jose")
            Comedian.create(name: "Dan Briechle", age: "30", city: "Flemington")
            Comedian.create(name: "Will Petty", age: "45", city: "Nuremburg")

            visit '/comedians'

            within('div#CesarChavez.comedian') do
                expect(page).to have_content('Cesar Chavez')
            end
        end 
    end

    context 'it can display a photo of the comedian' do
        it 'can display image on the page' do
            visit '/comedians'

            expect(page).to have_xpath("//img[contains(@src, 'Cesar.jpg')")
        end
    end
end