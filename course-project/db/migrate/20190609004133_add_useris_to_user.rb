class AddUserisToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :useris, :string
  end
end
