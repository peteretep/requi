class SelectQuestionsController < ApplicationController
  before_action :set_requisition
 def index
  binding.pry
 end

 def set_requisition
    @requisition = Requisition.last
  end

end
