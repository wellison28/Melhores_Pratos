class Recipe < ApplicationRecord
  validates_presence_of :content, message: ' - deve ser preenchido'
end
