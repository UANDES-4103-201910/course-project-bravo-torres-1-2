class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :user_types, :type, :user_is
  end
end
