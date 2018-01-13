class CreateDishesRestaurantsJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :dishes_restaurants, id:false do |t|
  		t.bigint :dish_id
  		t.bigint :restaurant_id
  	end
  end
end
