class RequiQuestion < ActiveRecord::Base
  belongs_to :requisition
  belongs_to :question
end
