class Dish < ApplicationRecord
  validates_presence_of :name, message: ' - deve ser preenchido'
  validates_presence_of :name, message: ' - nome ja cadastrado'
end
