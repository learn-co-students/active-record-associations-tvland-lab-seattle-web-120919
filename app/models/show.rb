class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters 
    belongs_to :network 

    def actors_list
        first_name = self.actors[0].first_name 
        last_name = self.actors[0].last_name
        array = []
        array << first_name + " " + last_name
    end 
end

