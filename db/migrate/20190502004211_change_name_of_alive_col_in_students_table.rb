class ChangeNameOfAliveColInStudentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :alive, :status
  end
end
