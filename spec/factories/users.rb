FactoryBot.define do
  factory :user do
    email { "111222333444@yopmail.com" }
    description { Faker::Movie.quote }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end