require 'rails_helper'

RSpec.describe Recipe, type: :model do

  it 'has a factory valid' do
  	create(:restaurant)
  	r = build(:recipe)
  	r.dish = create(:dish)
  	expect(r).to be_valid
  end

  it { should belong_to(:dish)}
  it { should validate_presence_of(:content)}
  it { should validate_presence_of(:dish_id)}
  	
end
