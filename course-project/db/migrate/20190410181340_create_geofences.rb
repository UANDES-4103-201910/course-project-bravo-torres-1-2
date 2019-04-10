class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.string :area
      t.string :country

      t.timestamps
    end
  end
end
