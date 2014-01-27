# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  store_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
