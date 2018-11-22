class AddConfirmedToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :confirmed, :boolean, default: false
  end
end
