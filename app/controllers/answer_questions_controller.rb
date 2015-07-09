class AnswerQuestionsController < ApplicationController
  before_action :set_requisition

  def index

  end

  def save
    # binding.pry
  end

  def set_requisition
    @requisition = Requisition.find(params[:id])
  end


end
