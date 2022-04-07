class TroublesController < ApplicationController
  def index
    @buy_trouble = Trouble.find(1)
    @buy_question = Question.where(trouble_id: 1).sample
    @eat_trouble = Trouble.find(2)
    @eat_question = Question.where(trouble_id: 2).sample
  end
end
