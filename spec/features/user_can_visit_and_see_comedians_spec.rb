RSpec.describe 'User can visit and see comedians' do
    describe 'Validations' do
        describe 'Required Field(s)' do
            it 'should be invalid if missing a name' do
                comic = Comedian.create(age: 48)
                expect(comic).to_not be_valid
            end

            it 'should be invalid if missing an age' do
                comic = Comedian.create(name: 'Mitch Hedberg')
                expect(comic).to_not be_valid
            end
        end
    end

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

    context 'it can display analytics' do

        it 'can display average age of comedians' do
            c1 = Comedian.create(name: "Robin Williams", age:10)
            c2 = Comedian.create(name: "Michael Jackson", age:20)

            visit '/comedians'

            expect(page).to have_content(15)
        end 

        it 'can display average age of comedians in specific div' do 
            c1 = Comedian.create(name: "Robin Williams", age:10)
            c2 = Comedian.create(name: "Michael Jackson", age:20)

            visit '/comedians'
            within('div#stats') do
                expect(page).to have_content(15)
            end
        end 

        it 'can display a unique list of cities in a specific div' do
            burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
            ball = Comedian.create(name: "Lucille Ball", age:77, city:"Los Angeles, CA", headshot:'ball.jpg')
            poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')
            visit '/comedians'
            within('#stats') do 
                expect(page).to have_content("New York City, NY")
                expect(page).to have_content("Los Angeles, CA")
            end
        end

        context 'User can query the page' do

            it 'can show comedians by age' do
                burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
                ball = Comedian.create(name: "Lucille Ball", age:28, city:"Los Angeles, CA", headshot:'ball.jpg')
                poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')

                visit '/comedians?age=28'

                expect(page).to have_content("Lucille Ball")
                expect(page).to have_content("Bo Burnham")

                expect(page).to_not have_content("Amy Poehler")
            end 
            
            it 'can display only sorted comedians specials' do 
                burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
                ball = Comedian.create(name: "Lucille Ball", age:28, city:"Los Angeles, CA", headshot:'ball.jpg')
                poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')

                burnham.specials.create(name: "Make Happy", runtime:60, image:"make-happy.jpg")
                poehler.specials.create(name:"Parks and Recreation", runtime:30, image:"pnr.jpg")

                visit '/comedians?age=28'

                expect(page).to have_content('Make Happy')
                expect(page).to_not have_content("Parks and Recreation")
            end 

        end

    end

end

