class AddDescriptionToGuard < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :description , :text
  end
end
