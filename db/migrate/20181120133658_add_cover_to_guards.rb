class AddCoverToGuards < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :cover, :string
  end
end
