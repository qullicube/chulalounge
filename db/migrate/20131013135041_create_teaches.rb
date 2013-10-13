class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.integer :course_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
