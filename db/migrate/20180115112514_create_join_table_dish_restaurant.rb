class CreateJoinTableDishRestaurant < ActiveRecord::Migration[5.1]
  def change
    create_join_table :dishes, :restaurants do |t|
      t.index [:dish_id, :restaurant_id]
    end
  end
end
