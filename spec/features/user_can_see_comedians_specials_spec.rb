RSpec.describe "It can display Specials" do

        it 'can be seen on index.erb' do
            c1 = Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
        
            c1.specials.create(name: "UFW", runtime: 35215200)
            c1.specials.create(name: "Delano grape strike", runtime: 2628000)
        
            
            visit '/comedians'
            
            expect(page).to have_content('UFW')
            expect(page).to have_content('Delano grape strike')
            expect(page).to have_content(35215200)
            expect(page).to have_content(2628000)
        end 
        
        
        context 'for each comedian' do
            it 'can associate comedian_1 specials' do
                c1 = Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
                
                c1.specials.create(name: "UFW", runtime: 35215200)
                c1.specials.create(name: "Delano grape strike", runtime: 2628000)
                
                visit '/comedians'

                within('div#CesarChavez.comedian') do
                    expect(page).to have_content('UFW')
                    expect(page).to have_content('Delano grape strike')
                end
            end

            it 'can associate comedian_2 specials' do
                c2 = Comedian.create(name: "Dan Briechle", age: "30", city: "Flemington")
    
                c2.specials.create(name: "Drums, man", runtime: 1234)
                c2.specials.create(name: "No drums for me", runtime: 2345)
                           
                visit '/comedians'

                within('div#DanBriechle.comedian') do
                    expect(page).to have_content('Drums, man')
                end 
            end
        end

        context 'can show specials thumbnails' do
            it 'can show image in the same div as the special' do
                williams = Comedian.create(name:"Robin Williams", age:63, headshot:'williams.jpg')
                sd = williams.specials.create(name: "Weapons of Self Destruction", runtime: 90)
                evening = williams.specials.create(name: "An Evening with Robin Williams", runtime:60, image:"an-evening-with-rob.jpg")

                visit '/comedians'
                
                within('div#RobinWilliams') do
                    expect(page).to have_css("img[src='#{evening.image}']")
                end
            end 
        end

end

