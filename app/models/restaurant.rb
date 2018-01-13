class Restaurant < ApplicationRecord
  has_many :qualifications
  has_and_belongs_to_many :dishes

  validates_presence_of :name, message: ' - deve ser preenchido'
  validates_presence_of :address, message: ' - deve ser preenchido'
  validates_uniqueness_of :name, message: 'nome já cadastrado'
  validates_uniqueness_of :address, message: 'endereço já cadastrado'
  validate :primeira_letra_maiuscula

  private

  def primeira_letra_maiuscula
    unless name =~ /[A-Z].*/
      errors.add(:name, 'primeira letra deve ser maiúscula')
    end
  end
end
