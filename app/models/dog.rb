# == Schema Information
#
# Table name: dogs
#
#  id        :integer          not null, primary key
#  name      :string
#  uuid      :uuid
#  image_url :string
#

class Dog < ActiveRecord::Base
end
