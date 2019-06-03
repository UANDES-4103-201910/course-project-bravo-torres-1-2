class AddTrackableToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :trackable, :string
  end
end
