class ChangePictureToJson < ActiveRecord::Migration[5.2]
  def change
    remove_column :guards, :cover
    remove_column :guards, :picture
  end
end
