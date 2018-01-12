class Qualification < ApplicationRecord
	validates_presence_of :score, message: " - deve ser preenchido"
	
	validates_numericality_of :score, 
														greater_than_or_equal_to: 0, 
											      less_than_or_equal_to: 10
														message: " - deve ser um numero entre 0 e 10"
	
	validates_numericality_of :amount_spent, greter_than: 0,
														message: " - deve ser um numero maior que 0"
end
