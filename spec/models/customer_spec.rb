require 'rails_helper'

RSpec.describe Customer, type: :model do
	
	it 'Has a factory valid' do
		expect(build(:customer)).to be_valid
	end

  it { should have_many(:qualifications) }
  it { should validate_presence_of(:name)}
  it { should validate_uniqueness_of(:name)}
  it { should validate_numericality_of(:age).
  												 is_less_than(100).
  												 is_greater_than(0)}
end
