FactoryBot.define do
  factory :recipe do
  	content Faker::Food.description
  end
end
