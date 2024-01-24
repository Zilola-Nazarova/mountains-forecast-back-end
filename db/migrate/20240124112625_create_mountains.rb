class CreateMountains < ActiveRecord::Migration[7.1]
  def change
    create_table :mountains do |t|
      t.string :name, null:false
      t.float :latitude, null:false
      t.float :longitude, null:false
      t.float :elevation, null:false

      t.timestamps
    end
  end
end
