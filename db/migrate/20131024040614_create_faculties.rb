class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
