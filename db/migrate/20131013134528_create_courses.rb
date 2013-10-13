class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.string :faculty
      t.integer :academic_year

      t.timestamps
    end
  end
end
