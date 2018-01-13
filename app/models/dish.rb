class Dish < ApplicationRecord
	has_and_belongs_to_many :restaurant
	has_one :recipe

  validates_presence_of :name, message: ' - deve ser preenchido'
  validates_presence_of :name, message: ' - nome ja cadastrado'
  validate :validate_presence_of_more_than_one_restaurant

  def validate_presence_of_more_than_one_restaurant
  	if !restaurants.exists?
  		errors.add(:restaurants, "deve haver ao menos um restaurante")
  	end
  end
end
