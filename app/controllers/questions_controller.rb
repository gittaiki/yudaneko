class QuestionsController < ApplicationController
  def show
    @trouble = Trouble.find(params[:trouble_id])
    # 最初の質問のみ走る処理
    if params[:asks].nil?
      @question = Question.find(params[:id])
      @asks = []
      @asks << @question.id
      return
    end

    @asks = JSON.parse(params[:asks])

    @question = Question.where(trouble_id: @trouble.id).where.not(id: @asks).sample
    if @question.present?
      @asks << @question.id
    else
      redirect_to cannot_path
    end
  end
end
