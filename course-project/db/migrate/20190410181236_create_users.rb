class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :lastname
      t.string :password
      t.string :address
      t.integer :phone
      t.text :profile
      t.boolean :is_suspended
      t.boolean :has_prev_suspension
      t.boolean :is_blocked
      t.references :geofence, foreign_key: true

      t.timestamps
    end
  end
end
