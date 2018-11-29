class Comedian < ActiveRecord::Base
    has_many :specials

    validates :name, presence: true
    validates :age, presence: true

    def self.average_age
        all_the_years = Comedian.all.map do |comedian|
            comedian.age
        end.sum
        (all_the_years / Comedian.all.length)
    end     
end
