# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  dog_id     :integer
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :dog
  validates_presence_of :dog_id, :text
end
