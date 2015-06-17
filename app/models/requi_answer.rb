class RequiAnswer < ActiveRecord::Base
  belongs_to :requisition
  belongs_to :requi_question
  belongs_to :question
end
