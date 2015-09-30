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
#

class Dog < ActiveRecord::Base
  has_many :posts
  
  validates_presence_of :name, :uuid

  before_validation :ensure_uuid 

  private

  def ensure_uuid
    self.uuid = SecureRandom.uuid
  end
end
