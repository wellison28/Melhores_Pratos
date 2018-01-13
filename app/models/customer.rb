class Customer < ApplicationRecord
	has_many :qualifications

  validates_presence_of :name, message: ' - deve ser preenchido'
  validates_uniqueness_of :name, message: ' - nome ja cadastrado'
  validates_numericality_of :age, greater_than: 0,
                                  less_than: 100,
                                  message: ' - deve ser um numero entre 0 e 100'
end
