# == Schema Information
#
# Table name: answers
#
#  id             :integer          not null, primary key
#  requisition_id :integer
#  question_id    :integer
#  text           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Answer < ActiveRecord::Base
  has_one :requisition
  has_one :question
end
