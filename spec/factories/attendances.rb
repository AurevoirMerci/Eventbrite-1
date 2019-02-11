FactoryBot.define do
  factory :attendance do
  participant { FactoryBot.create(:user) }
  event { FactoryBot.create(:event) }
  stripe_customer_id { Faker::IDNumber.valid }
  end
end