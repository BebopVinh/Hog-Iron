class AddColumnToKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :klasses, :description, :string
  end
end
