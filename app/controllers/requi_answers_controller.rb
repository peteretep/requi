class RequiAnswersController < ApplicationController
  before_action :set_requi_answer, only: [:show, :edit, :update, :destroy]

  # GET /requi_answers
  # GET /requi_answers.json
  def index
    @requi_answers = RequiAnswer.all
  end

  # GET /requi_answers/1
  # GET /requi_answers/1.json
  def show
  end

  # GET /requi_answers/new
  def new
    @requi_answer = RequiAnswer.new
  end

  # GET /requi_answers/1/edit
  def edit
  end

  # POST /requi_answers
  # POST /requi_answers.json
  def create
    @requi_answer = RequiAnswer.new(requi_answer_params)

    respond_to do |format|
      if @requi_answer.save
        format.html { redirect_to @requi_answer, notice: 'Requi answer was successfully created.' }
        format.json { render :show, status: :created, location: @requi_answer }
      else
        format.html { render :new }
        format.json { render json: @requi_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requi_answers/1
  # PATCH/PUT /requi_answers/1.json
  def update
    respond_to do |format|
      if @requi_answer.update(requi_answer_params)
        format.html { redirect_to @requi_answer, notice: 'Requi answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @requi_answer }
      else
        format.html { render :edit }
        format.json { render json: @requi_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requi_answers/1
  # DELETE /requi_answers/1.json
  def destroy
    @requi_answer.destroy
    respond_to do |format|
      format.html { redirect_to requi_answers_url, notice: 'Requi answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requi_answer
      @requi_answer = RequiAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requi_answer_params
      params.require(:requi_answer).permit(:requisition_id, :requi_question_id, :question_id, :text)
    end
end
