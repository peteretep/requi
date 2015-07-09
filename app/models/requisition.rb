class Requisition < ActiveRecord::Base
  has_many :requi_questions
  has_many :requi_answers, through: :requi_answers
  has_many :questions, through: :requi_questions
end
