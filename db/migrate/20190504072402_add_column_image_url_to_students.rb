class AddColumnImageUrlToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :image_url, :string
  end
end
