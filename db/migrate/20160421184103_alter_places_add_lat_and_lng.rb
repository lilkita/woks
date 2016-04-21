class AlterPlacesAddLatAndLng < ActiveRecord::Migration
  def change
    add_column :places, :latitude, :float
    add_column :places, :longitutde, :float
  end
end
