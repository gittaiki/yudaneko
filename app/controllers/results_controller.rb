class ResultsController < ApplicationController
  def show
    @result = Result.find(params[:id])
    @reason = Question.find(params[:question_id])
  end

  def cannot; end
end
