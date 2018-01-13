FactoryBot.define do
  factory :customer do
  	name Faker::Name.name
  	age Faker::Number.between(0,100)
  end
end
