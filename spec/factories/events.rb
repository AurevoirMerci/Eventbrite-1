FactoryBot.define do
  factory :event do
  start_date { Faker::Date.between(100.days.ago, Date.today) }
  duration { rand(1..120) }
  title { Faker::Hipster.word }
  description { Faker::Hipster.paragraphs.join("\n") }
  price { rand(1..1000) }
  location { Faker::GameOfThrones.city }
  end
end