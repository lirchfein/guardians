class AddCoordinatesToGuard < ActiveRecord::Migration[5.2]
  def change
    add_column :guards, :latitude, :float
    add_column :guards, :longitude, :float
  end
end
