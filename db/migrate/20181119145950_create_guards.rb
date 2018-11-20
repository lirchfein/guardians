class CreateGuards < ActiveRecord::Migration[5.2]
  def change
    create_table :guards do |t|
      t.string :name
      t.string :specialty
      t.string :location
      t.integer :rate
      t.boolean :available, :default => true
      t.references :user, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
