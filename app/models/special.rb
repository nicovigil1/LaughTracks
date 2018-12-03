class Special < ActiveRecord::Base
    belongs_to :comedian

    validates :name, presence: true

    def self.strip(parameters)
        image = parameters[:special][:image]
        parameters[:special][:image] = image[:filename]
        parameters[:special]
    end
end 