class RemoveGuardIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :guard, foreign_key: true
  end
end
