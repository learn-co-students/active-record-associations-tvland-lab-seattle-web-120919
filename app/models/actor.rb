require "pry"

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name 
        "#{self.first_name} #{self.last_name}" 
    end 

    def list_roles
        array1 = []
        array2 = []
        array1 << self.characters[0].name 
        array2 << self.shows[0].name
        "#{array1[0]} - #{array2[0]}"
    end 
end


