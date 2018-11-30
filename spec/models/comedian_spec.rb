RSpec.describe Comedian do
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

    context 'analytics' do
            it 'can find the average age of comedians' do
              c1 = Comedian.create(name: "Robin Williams", age:10)
              c2 = Comedian.create(name: "Michael Jackson", age:20)

              expect(Comedian.average_age).to eq(15)
            end

            it 'can find average run length' do 
              c1 = Comedian.create(name: "Robin Williams", age:10)
              c2 = Comedian.create(name: "Michael Jackson", age:20)

              c1.specials.create(name: "Off the Wall", runtime:10, image:"off-the-wall.jpg")
              c2.specials.create(name: "Weapons of Self Destruction", runtime:90, image:"self-destruction.jpeg")
              expect(Comedian.average_runtime).to eq(50)
            end

            xit 'can generate a unique list of cities' do
              burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
              ball = Comedian.create(name: "Lucille Ball", age:77, city:"Las Angeles, CA", headshot:'ball.jpg')
              poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')

              expect(Comedian.cities).to eq(["Los Angeles, CA", "New York City, NY"])
            end
        end 

  end
end
