# == Schema Information
#
# Table name: requisitions
#
#  id            :integer          not null, primary key
#  vendor        :string(255)
#  purchaser     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  property_type :string(255)
#

require 'rails_helper'

RSpec.describe Requisition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
