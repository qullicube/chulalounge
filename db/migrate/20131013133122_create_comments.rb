class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.date :timestamp
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
