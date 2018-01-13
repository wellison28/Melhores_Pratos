class Recipe < ApplicationRecord
	belongs_to :dishes

  validates_presence_of :content, message: ' - deve ser preenchido'
  validates_presence_of :dish_id
  validates_associated :dish
end
