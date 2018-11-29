RSpec.describe "It can display Specials" do

        it 'can be seen on index.erb' do
            Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
        
            Special.create(name: "UFW", runtime: 35215200)
            Special.create(name: "Delano grape strike", runtime: 2628000)
        
            
            visit '/comedians'

            expect(page).to have_content('UFW')
            expect(page).to have_content('Delano grape strike')
            expect(page).to have_content(35215200)
            expect(page).to have_content(2628000)
        end 


    context 'for each comedian' do
        it 'can associate comedian_1 specials' do
            Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
        
            Special.create(name: "UFW", runtime: 35215200)
            Special.create(name: "Delano grape strike", runtime: 2628000)

            within('div#DanBriechle.comedian') do
                expect(page).to have_content('UFW')
                expect(page).to have_content('Delano grape strike')
            end
        end
        
        it 'can associate comedian_2 specials' do
            Comedian.create(name: "Dan Briechle", age: "30", city: "Flemington")

            Special.create(name: "Drums, man", runtime: 1234)
            Special.create(name: "No drums for me", runtime: 2345)

            within('div#DanBriechle.comedian') do
                expect(page).to have_content('Drums, man')
            end 
        end

    end     
    
    
end

