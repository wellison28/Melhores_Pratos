class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, limit: 80, null: false
      t.string :address, limit: 150, null: false
      t.string :specialty, limit: 80
      t.timestamps
    end
  end
end
