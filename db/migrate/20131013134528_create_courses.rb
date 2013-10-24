class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.integer :academic_year
      t.integer :semester
      t.timestamps
    end
  end
end
