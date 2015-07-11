class AnswerQuestionsController < ApplicationController
  before_action :set_requisition

  def index

  end

  def save
    # binding.pry

    @requisition.questions.each do |q|
      answer = Answer.find_or_initialize_by(requisition_id: @requisition.id, 
                    question_id: q.id)
      answer.text = params[q.id.to_s]
      answer.save
    end
    @answers = Answer.where(requisition_id: @requisition.id).all
      # binding.pry
    # binding.pry
  end

  def set_requisition
    @requisition = Requisition.find(params[:id])
  end


end
