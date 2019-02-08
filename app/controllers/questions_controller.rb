class QuestionsController < ApplicationController
  def index
    @questions = Question.order(title: :asc) #joins(answers: :votes).where.not("votes = ?", nil)
  end

  def show
    @question = Question.where(status: "live").last
  end

  def activate
    Question.update_all(status: "")
    Question.find(params[:question_id]).update(status: "live")
    redirect_to questions_path
  end

end
