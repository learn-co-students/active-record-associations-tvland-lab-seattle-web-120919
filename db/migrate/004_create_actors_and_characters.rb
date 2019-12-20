class CreateActorsAndCharacters < ActiveRecord::Migration[5.2]
    def change
        create_table :actors do |t|
            t.string :first_name
            t.string :last_name
        end

        create_table :characters do |t|
            t.string :name
        end
    end
end