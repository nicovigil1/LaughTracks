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
    
    def self.average_runtime
        runtimes = []
        Comedian.all.each do |comedian|
            comedian.specials.each do |special|
                runtimes << special.runtime
            end
        end 
        runtimes.sum / runtimes.length
    end 

    def self.cities
        Comedian.all.distinct.pluck(:city)
    end 

end
