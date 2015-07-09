class SelectQuestionsController < ApplicationController
  before_action :set_requisition
  def index

  end

  def set
    return if params[:questions].nil?
    params[:questions].each do |q|
      question = RequiQuestion.create(requisition_id: params[:id], question_id: q)
      @requisition.requi_questions << question
    end
    @requisition.save
  end

 def set_requisition
    @requisition = Requisition.find(params[:id])
  end

  def questions
    Question.all
  end
  helper_method :questions
end
