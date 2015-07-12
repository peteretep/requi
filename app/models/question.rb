# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  answer_id  :integer
#

class Question < ActiveRecord::Base
  has_many :requisitions, through: :requi_questions
  has_many :answers
end
