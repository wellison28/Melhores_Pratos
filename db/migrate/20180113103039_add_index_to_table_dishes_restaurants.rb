class AddIndexToTableDishesRestaurants < ActiveRecord::Migration[5.1]
  def change
  	change_table :dishes_restaurants do |t|
  		t.index :dish_id
  		t.index :restaurant_id
  	end
  end
end
