class Question < ApplicationRecord
  has_many :answers
  has_many :votes, through: :answers

  def live?
    status == "live"
  end
end
