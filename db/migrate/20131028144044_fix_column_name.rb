class FixColumnName < ActiveRecord::Migration
  def self.up
  	rename_column :courses, :academic_year, :year
  end
end
