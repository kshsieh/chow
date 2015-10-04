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

class Dog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :uuid, :slug

  before_validation :ensure_uuid 

  has_many :posts
  has_many :followers, class_name: 'Follow' 

  private

  def ensure_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
