class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name, limit: 80
      t.timestamps
    end
  end
end
