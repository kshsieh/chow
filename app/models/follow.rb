# == Schema Information
#
# Table name: follows
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  dog_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Follow < ActiveRecord::Base
  belongs_to :user
  belongs_to :dog
end
