class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :abbreviation
      t.integer :faculty_id
      
      t.timestamps
    end
  end
end
