class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.integer :currculum_id
      t.integer :academic_year

      t.timestamps
    end
  end
end
