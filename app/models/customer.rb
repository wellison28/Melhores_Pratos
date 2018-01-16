class Customer < ApplicationRecord
	has_many :qualifications

  validates :name, 
  					presence: true, 
  					uniqueness: true
  					
 validates :age, numericality: {greater_than: 0, less_than: 100} 

end
