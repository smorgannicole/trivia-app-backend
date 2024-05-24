class TriviaQuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    questions = TriviaQuestion.where(trivia_category_id: params[:trivia_category_id])
    render json: questions
  end

  def show
    question = TriviaQuestion.find(params[:id])
    render json: question
  end
end
