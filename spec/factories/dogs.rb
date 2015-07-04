FactoryGirl.define do
  factory :dog do
    name { Faker::Name.name }
    uuid { SecureRandom.uuid }
  end
end