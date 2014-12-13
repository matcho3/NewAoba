class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    # @answers = Answer.all
    @answer = current_user.answers.build(answer_params)
    @answer.save

  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # def answer
  #   # @answer = Answer.new
  #   @answer.user_id = current_user.id

  #   # current_user.operation.questions.each do |question|
  #   # @answer.question_id = question.id
  #   # @answer.save
  # end


  # create_table "answers", force: true do |t|
  #   t.text     "content"
  #   t.integer  "user_id"
  #   t.integer  "question_id"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

  # GET /answers/new
  def new
    @answer = Answer.new
    @answer.build_question(question_params)
  end




# def new
#      @book = Book.new
#      @book.build_author

#     respond_to do |format|
#       format.html
#     end
#   end


  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json



  def create
    # @answer = Answer.new
    # @answer.user_id = current_user.もid
    # @answer.question_id = params[:question_id]
    # @answer.content = params[:content]
    # @answer.save
    # 一個保存できれば、何個でも保存できる
    @answer = current_user.answers.build(answer_params)
    @answer.save
    end

# @search_word = params[:word]


  # @answer = Answer.new
    # @answer.user_id = current_user.id

    # current_user.operation.questions.each do |question|
    # @answer.question_id = question.id
    # @answer.save





# def create
#         @post = current_user.posts.build(strong_params)
#         if @post.save
#             redirect_to @post
#         else
#             render 'new'
#         end
#     end

#     def create_temp
#         @post = current_user.posts.build(strong_params)
#         @post.published = false
#         @post.save
#     end





# def book
#       # @trip = Trip.find(params[:id])
#       # @book = Book.new
#       # @book.user_id = current_user.id 
#       # @book.trip_id = @trip.id
#       # @book.save
#       @book = current_user.books.create(trip_id: @trip.id)
#       @book.save
#         flash[:success] = "Your book request has been confirmed!!"
#     end








  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    # @answer = Answer.find(params[:id])
    # @question = Question.find(params[:question_id][:answer_id])



    # respond_to do |format|
    #   if @answer.update_attributes(answer_params) 
    #     && @question.update_attributes(params[:question_id])
    #     format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: 'edit' }
    #     format.json { render json: @answer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:content, :user_id, :question_id)
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:content)
    end

end
