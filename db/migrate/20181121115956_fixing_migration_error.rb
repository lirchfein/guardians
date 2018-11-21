class FixingMigrationError < ActiveRecord::Migration[5.2]
  def change
    remove_column :guards, :default
  end
end
