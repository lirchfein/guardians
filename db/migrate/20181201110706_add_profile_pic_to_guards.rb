class AddProfilePicToGuards < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :profile_pic, :string
  end
end
