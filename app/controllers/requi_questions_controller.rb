class RequiQuestionsController < ApplicationController
  before_action :set_requi_question, only: [:show, :edit, :update, :destroy]

  # GET /requi_questions
  # GET /requi_questions.json
  def index
    @requi_questions = requ.requi_questions
  end

  # GET /requi_questions/1
  # GET /requi_questions/1.json
  def show
    @requi_question = RequiQuestion.where(requsition_id: params[:id])
  end

  # GET /requi_questions/new
  def new
    @requi_question = RequiQuestion.new
  end

  # GET /requi_questions/1/edit
  def edit
  end

  # POST /requi_questions
  # POST /requi_questions.json
  def create
    @requi_question = RequiQuestion.new(requi_question_params)

    respond_to do |format|
      if @requi_question.save
        format.html { redirect_to @requi_question, notice: 'Requi question was successfully created.' }
        format.json { render :show, status: :created, location: @requi_question }
      else
        format.html { render :new }
        format.json { render json: @requi_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requi_questions/1
  # PATCH/PUT /requi_questions/1.json
  def update
    respond_to do |format|
      if @requi_question.update(requi_question_params)
        format.html { redirect_to @requi_question, notice: 'Requi question was successfully updated.' }
        format.json { render :show, status: :ok, location: @requi_question }
      else
        format.html { render :edit }
        format.json { render json: @requi_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requi_questions/1
  # DELETE /requi_questions/1.json
  def destroy
    @requi_question.destroy
    respond_to do |format|
      format.html { redirect_to requi_questions_url, notice: 'Requi question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def requ
      Requisition.find(session[:requisition_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_requi_question
      @requi_question = RequiQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requi_question_params
      params.require(:requi_question).permit(:requisition_id, :question_id)
    end
end
