class RemoveDatabaseAuthenticableFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :database_authenticable, :string
  end
end
