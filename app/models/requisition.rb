class Requisition < ActiveRecord::Base
  has_many :requi_questions
  has_many :requi_answers
end
