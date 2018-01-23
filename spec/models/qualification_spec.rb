require 'rails_helper'

RSpec.describe Qualification, type: :model do
  it 'has a factory valid' do
  	q = build(:qualification)
  	q = build(:restaurant)
  	q = build(:customer)
   	expect(q).to be_valid
  end

  it { should belong_to(:customer)}
  it { should belong_to(:restaurant)}
  it { should validate_presence_of(:score)}
  it { should validate_presence_of(:customer_id)}
  it { should validate_presence_of(:restaurant_id)}
end
