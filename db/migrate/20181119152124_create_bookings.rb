class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :guard, foreign_key: true
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
