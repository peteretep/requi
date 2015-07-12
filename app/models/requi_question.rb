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

class RequiQuestion < ActiveRecord::Base
  belongs_to :requisition
  belongs_to :question
end
