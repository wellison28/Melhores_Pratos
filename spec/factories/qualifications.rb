FactoryBot.define do
  factory :qualification do
  	score Faker::Number.between(0,10)
  	amount_spent Faker::Number.decimal(3)
  	comment ''
  end
end
