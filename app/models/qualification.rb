class Qualification < ApplicationRecord
	belongs_to :customer
	belongs_to :restaurant

	validates_presence_of :score, message: " - deve ser preenchido"
	validates_presence_of :customer_id, :restaurant_id
	validates_associated :customer, :restaurant
	
	validates_numericality_of :score, 
														greater_than_or_equal_to: 0, 
											      less_than_or_equal_to: 10,
														message: " - deve ser um numero entre 0 e 10"
	
	validates_numericality_of :amount_spent, 
														greater_than: 0,
														message: " - deve ser um numero maior que 0"
end
