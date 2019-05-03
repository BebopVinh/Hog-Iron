class AddBioAndGradYearToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :graduation_year, :integer
    add_column :students, :bio, :text
  end
end
