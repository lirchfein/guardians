class AddUserToGuard < ActiveRecord::Migration[5.2]
  def change
    add_reference :guards, :user, foreign_key: true
  end
end
