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

require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe '#ensure_uuid' do      
    let(:dog) { FactoryGirl.build(:dog) }

    it 'should set uuid' do
      expect(dog.uuid).to be_nil
      dog.send(:ensure_uuid)
      expect(dog.uuid).not_to be_nil
    end
  end
end
