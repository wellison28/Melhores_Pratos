class AddDishRefToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :dish, foreign_key: true
  end
end
