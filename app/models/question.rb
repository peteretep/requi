class Question < ActiveRecord::Base
  has_many :requisitions, through: :requi_questions
end
