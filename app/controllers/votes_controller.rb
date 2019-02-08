class VotesController < ApplicationController
  def show
    @question = Question.where(status: "live").last
  end
end
