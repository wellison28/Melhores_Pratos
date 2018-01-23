class Dish < ApplicationRecord
	has_and_belongs_to_many :restaurants
	has_one :recipe

  validates :name, presence: true
  validate :validate_presence_of_more_than_one_restaurant

  def validate_presence_of_more_than_one_restaurant
  	if !Restaurant.exists?
  		errors.add(:restaurants, "deve haver ao menos um restaurante")
  	end
  end
end
