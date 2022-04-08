class TroublesController < ApplicationController
  def index
    @buy_trouble = Trouble.find(1)
    @buy_question = Question.first_question(@buy_trouble)
    @eat_trouble = Trouble.find(2)
    @eat_question = Question.first_question(@eat_trouble)
  end
end
