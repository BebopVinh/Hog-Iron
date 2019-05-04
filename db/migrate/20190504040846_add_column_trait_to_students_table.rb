class AddColumnTraitToStudentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :trait, :string
  end
end
