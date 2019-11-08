class AdviceQuestionsController < ApplicationController
  before_action :set_advice_question, only: [:show, :edit, :update, :destroy]
  before_action :require_permission, only: [:edit, :update, :destroy]

  # GET /advice_questions
  # GET /advice_questions.json
  def index
    redirect_to root_path
    @advice_questions = AdviceQuestion.all
  end

  # GET /advice_questions/1
  # GET /advice_questions/1.json
  def show
    @replies = AdviceReply.where(advice_question_id: params[:id])
  end

  # GET /advice_questions/new
  def new
    @advice_question = AdviceQuestion.new
  end

  # GET /advice_questions/1/edit
  def edit
  end

  # POST /advice_questions
  # POST /advice_questions.json
  def create
    @advice_question = AdviceQuestion.new(advice_question_params)

    respond_to do |format|
      if @advice_question.save
        format.html { redirect_to @advice_question, notice: 'Advice question was successfully created.' }
        format.json { render :show, status: :created, location: @advice_question }
      else
        format.html { render :new }
        format.json { render json: @advice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advice_questions/1
  # PATCH/PUT /advice_questions/1.json
  def update
    respond_to do |format|
      if @advice_question.update(advice_question_params)
        format.html { redirect_to @advice_question, notice: 'Advice question was successfully updated.' }
        format.json { render :show, status: :ok, location: @advice_question }
      else
        format.html { render :edit }
        format.json { render json: @advice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advice_questions/1
  # DELETE /advice_questions/1.json
  def destroy
    @advice_question.destroy
    respond_to do |format|
      format.html { redirect_to advice_questions_url, notice: 'Advice question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def require_permission
    if current_user != AdviceQuestion.find(params[:id]).user
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice_question
      @advice_question = AdviceQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advice_question_params
      params.require(:advice_question).permit(:user_id, :topic_id, :title, :desc)
    end
end
