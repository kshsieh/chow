# == Schema Information
#
# Table name: dogs
#
#  id        :integer          not null, primary key
#  name      :string
#  uuid      :uuid
#  image_url :string
#

require 'rails_helper'

RSpec.describe Dog, type: :model do
end
