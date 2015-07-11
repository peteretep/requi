class RequiAnswer < ActiveRecord::Base
  belongs_to :requisition
  belongs_to :question
  has_one :answer
end
