class RemovePictureFromGuards < ActiveRecord::Migration[5.2]
  def change
    remove_column :guards, :picture, :json
  end
end
