class Answer < ActiveRecord::Base
  has_one :requisition
  # has_one :requi_question
  has_one :question
end


# select * from answers where requisition.id = 1  and question.id = 1