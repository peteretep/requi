# == Schema Information
#
# Table name: requi_questions
#
#  id             :integer          not null, primary key
#  requisition_id :integer
#  question_id    :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe RequiQuestion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
