RSpec.describe "It can display Specials" do

    context "it can display Comedian's specials under their name"
    Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
    Comedian.create(name: "Dan Briechle", age: 30, city: "Flemington")
    Comedian.create(name: "Will Petty", age: 45, city: "Nuremburg")
    Comedian.create(name: "Bradley Niedt", age: 66, city: "Denver")

    Special.create(name: "UFW", runtime: 35215200)
    Special.create(name: "Delano grape strike", runtime: 2628000)

    it 'on the page' do
        
        visit '/comedians'

        expect(page).to have_content('UFW')
        expect(page).to have_content('Delano grape strike')
        expect(page).to have_content(35215200)
        expect(page).to have_content(2628000)
    end 
    
end

