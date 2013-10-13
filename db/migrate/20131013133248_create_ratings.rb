class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :know_rating
      t.integer :diff_rating
      t.integer :grade_rating
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
