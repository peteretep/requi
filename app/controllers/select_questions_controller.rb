class SelectQuestionsController < ApplicationController
  before_action :set_requisition
  def index

    respond_to do |format|
      format.html
      format.pdf do
        pdf = RequisitionPdf.new(@requisition)
        send_data pdf.render, filename: 'requisitions.pdf', type: 'application/pdf'
      end
    end

  end

  def set
    return if params[:questions].nil?
    @requisition.questions = Question.find(params[:questions])
    @requisition.save#
  end

 def set_requisition
    @requisition = Requisition.find(params[:id])
  end

  def questions
    Question.all
  end
  helper_method :questions
end
