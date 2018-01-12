class ChangeColumnNameInDish < ActiveRecord::Migration[5.1]
  def change
    change_column :dishes, :name, :string, null: false
  end
end
