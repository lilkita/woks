class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :place_id
      t.integer :user_id
      t.timestamps

      belongs_to :user
      belongs_to :place 
    end

    add_index :photos, [:user_id, :place_id]
    add_index :photos, :place_id
  end
end
