class AdviceRepliesController < ApplicationController
  before_action :set_advice_reply, only: [:show, :edit, :update, :destroy]
  before_action :require_permission, only: [:edit, :update, :destroy]

  # GET /advice_replies
  # GET /advice_replies.json
  def index
    redirect_to root_path
    @advice_replies = AdviceReply.all
  end

  # GET /advice_replies/1
  # GET /advice_replies/1.json
  def show
  end

  # GET /advice_replies/new
  def new
    @advice_reply = AdviceReply.new
  end

  # GET /advice_replies/1/edit
  def edit
  end

  # POST /advice_replies
  # POST /advice_replies.json
  def create
    @advice_reply = AdviceReply.new(advice_reply_params)

    respond_to do |format|
      if @advice_reply.save
        format.html { redirect_to @advice_reply, notice: 'Advice reply was successfully created.' }
        format.json { render :show, status: :created, location: @advice_reply }
      else
        format.html { render :new }
        format.json { render json: @advice_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advice_replies/1
  # PATCH/PUT /advice_replies/1.json
  def update
    respond_to do |format|
      if @advice_reply.update(advice_reply_params)
        format.html { redirect_to @advice_reply, notice: 'Advice reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @advice_reply }
      else
        format.html { render :edit }
        format.json { render json: @advice_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advice_replies/1
  # DELETE /advice_replies/1.json
  def destroy
    @advice_reply.destroy
    respond_to do |format|
      format.html { redirect_to advice_replies_url, notice: 'Advice reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def require_permission
    if current_user != AdviceReply.find(params[:id]).user
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice_reply
      @advice_reply = AdviceReply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advice_reply_params
      params.require(:advice_reply).permit(:user_id, :advice_question_id, :title, :desc)
    end
end
