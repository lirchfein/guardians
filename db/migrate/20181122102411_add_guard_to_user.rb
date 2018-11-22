class AddGuardToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :guard, foreign_key: true
  end
end
