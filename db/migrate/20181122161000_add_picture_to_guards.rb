class AddPictureToGuards < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :picture, :json
  end
end
