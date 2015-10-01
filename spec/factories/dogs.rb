# == Schema Information
#
# Table name: dogs
#
#  id                :integer          not null, primary key
#  name              :string
#  uuid              :uuid
#  profile_image_url :string
#  created_at        :datetime
#  updated_at        :datetime
#  description       :text
#  slug              :string
#

FactoryGirl.define do
  factory :dog do
    name { Faker::Name.name }
  end
end
