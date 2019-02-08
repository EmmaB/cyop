class AnswersController < ApplicationController
  def vote
    Vote.create(answer_id: params[:answer_id])
    redirect_to votes_path
  end

end
