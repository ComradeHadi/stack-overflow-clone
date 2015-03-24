class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      UserMailer.send_notification(User.find(@question.user_id)).deliver
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end


  private
  def answer_params
    params.require(:answer).permit(:text, :question_id)
  end
end
