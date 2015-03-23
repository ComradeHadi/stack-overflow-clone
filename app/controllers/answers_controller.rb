class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to question_path(params[:question_id])
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end


  private
  def answer_params
    params.require(:answer).permit(:text)
  end
end
