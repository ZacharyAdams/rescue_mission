class AnswersController < ApplicationController
  def index
    @answers = Answer.all.order('created_at ASC')
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def new
    @answer = Answer.new
  end

  private

  def answer_params
    params.require(:answer).permit(:title, :body, :user_id)
  end

end
