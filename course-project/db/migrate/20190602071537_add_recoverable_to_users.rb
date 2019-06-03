class AddRecoverableToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :recoverable, :string
  end
end
