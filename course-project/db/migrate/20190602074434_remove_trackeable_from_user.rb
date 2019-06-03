class RemoveTrackeableFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :trackeable, :string
  end
end
