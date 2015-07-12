class Answer < ActiveRecord::Base
  has_one :requisition
  has_one :question
end
