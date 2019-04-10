class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.date :creation_date
      t.text :text
      t.string :title
      t.references :user, foreign_key: true
      t.references :geofence, foreign_key: true
      t.boolean :apropriated
      t.boolean :is_open
      t.boolean :is_solved
      t.integer :share_counter
      t.integer :report_counter
      t.boolean :is_hidden
      t.boolean :is_linked
      t.boolean :file_attachment

      t.timestamps
    end
  end
end
