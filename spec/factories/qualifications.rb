FactoryBot.define do
  factory :qualification do
  	score Faker::Number.between(0,10)
  	amount_spent 
  	comment ''
  end
end
