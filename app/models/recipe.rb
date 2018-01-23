class Recipe < ApplicationRecord
	belongs_to :dish

  validates :content, presence: true
  validates :dish_id, presence: true
  validates_associated :dish
end
