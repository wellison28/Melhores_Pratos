FactoryBot.define do
  factory :customer do
  	name Faker::Name.name
  	age Faker::Number.between(18,120)
  end
end
