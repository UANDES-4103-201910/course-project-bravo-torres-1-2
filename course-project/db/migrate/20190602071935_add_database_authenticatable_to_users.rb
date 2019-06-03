class AddDatabaseAuthenticatableToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :database_authenticatable, :string
  end
end
