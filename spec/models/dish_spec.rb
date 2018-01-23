require 'rails_helper'

RSpec.describe Dish, type: :model do
	it 'has a factory valid' do
		create(:restaurant)
		expect(build(:dish)).to be_valid
	end

  it { should have_one(:recipe) }
  it { should have_and_belong_to_many(:restaurants) }
  it { should validate_presence_of(:name) }
	
	it 'validate presence of more than one restaurant' do
		expect(build(:dish)).to be_invalid
	end

end
