class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order('created_at desc')
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

     if @question.save
      redirect_to '/questions'
    else
      flash.now[:notice] = "Uh oh! Your question could not be saved."
      render :new
    end
  end


  def new
    @question = Question.new
  end

end



  private

  def question_params
    # this method will return a hash like this:
    # { title: "whatever title", author: "some person", body: "blah blah blah" }
    params.require(:question).permit(:user_id, :title, :body)
  end
