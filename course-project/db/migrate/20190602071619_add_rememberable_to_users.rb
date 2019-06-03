class AddRememberableToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rememberable, :string
  end
end
