class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :description
      t.string :head_of_house
      t.timestamps
    end
  end
end
