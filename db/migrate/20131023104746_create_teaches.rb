class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.integer :professor_id
      t.integer :course_id
      t.integer :year

      t.timestamps
    end
  end
end
