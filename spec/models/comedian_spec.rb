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
        end 

  end
end
