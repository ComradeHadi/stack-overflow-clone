class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @user = User.find(current_user)
    @question = @user.questions.new
  end

  def create
    @user = User.find(current_user)
    @question = @user.questions.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:text)
  end

end
