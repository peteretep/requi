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

class Requisition < ActiveRecord::Base
  has_many :requi_questions
  has_many :answers
  has_many :questions, through: :requi_questions

  def questions_selected?
  	return true if self.questions.count > 0
  end
end
