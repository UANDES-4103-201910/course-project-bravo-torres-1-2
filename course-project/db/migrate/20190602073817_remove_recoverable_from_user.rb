class RemoveRecoverableFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :recoverable, :string
  end
end
