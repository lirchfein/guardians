class RemoveUserIdFromGuards < ActiveRecord::Migration[5.2]
  def change
    remove_reference :guards, :user, foreign_key: true
  end
end
