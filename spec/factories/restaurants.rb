FactoryBot.define do
  factory :restaurant do
    name Faker::Company.name
    address Faker::Address.city
    specialty ''
  end
end
