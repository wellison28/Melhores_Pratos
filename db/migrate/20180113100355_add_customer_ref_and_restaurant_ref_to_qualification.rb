class AddCustomerRefAndRestaurantRefToQualification < ActiveRecord::Migration[5.1]
  def change
    add_reference :qualifications, :restaurant, foreign_key: true
    add_reference :qualifications, :customer, foreign_key: true
  end
end
