class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.belongs_to :comment
      t.belongs_to :rating

      t.timestamps
    end
  end
end
