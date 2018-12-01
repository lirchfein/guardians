class AddCoverPicToGuards < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :cover_pic, :string
  end
end
