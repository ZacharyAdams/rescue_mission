class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order('created_at desc')
  end

  def show

  end

  def create

  end


  def new

  end

end
