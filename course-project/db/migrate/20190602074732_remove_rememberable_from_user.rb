class RemoveRememberableFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rememberable, :string
  end
end
