require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
	context "Restaurant validations" do
	  it "Valid when contains name and address" do
	  	r = build(:restaurant)
	  	expect(r.valid?).to be_truthy
	  end

	  it "Invalid when the name contains the first small letter" do
	  	r =  Restaurant.new name: "fasano", address: "Heliodoro de Paiva"
	  	expect(r.valid?).to be_falsey
	  end

	  it "Name and unique address" do
	  	Restaurant.create name: "Fasano", address: "Heliodoro de Paiva"
	  	r =  Restaurant.new name: "Fasano", address: "Heliodoro de Paiva"
	  	expect(r.valid?).to be_falsey
	  end
	end
end
