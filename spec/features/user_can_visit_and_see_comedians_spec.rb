RSpec.describe 'User can visit and see comedians' do
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
            williams = Comedian.create(name:"Robin Williams", age:63, headshot:'williams.jpg')
            williams.specials.create(name: "Weapons of Self Destruction", runtime: 90)
            visit '/comedians'


            expect(page).to have_css("img[src='#{williams.headshot}']")
        end

        it 'can display each comedians image in the same div' do
            williams = Comedian.create(name:"Robin Williams", age:63, headshot:'williams.jpg')

            visit '/comedians'
     
                within('div#RobinWilliams.comedian') do
                    expect(page).to have_css("img[src='#{williams.headshot}']")
                end
        end 
    end
end