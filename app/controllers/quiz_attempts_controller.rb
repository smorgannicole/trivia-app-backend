class QuizAttemptsController < ApplicationController
  before_action :authenticate_user!

  def create
    quiz_attempt = current_user.quiz_attempts.new(quiz_attempt_params)
    if quiz_attempt.save
      render json: quiz_attempt, status: :created
    else
      render json: quiz_attempt.errors, status: :unprocessable_entity
    end
  end

  def index
    quiz_attempts = QuizAttempt.where(user_id: current_user.id)
    render json: quiz_attempts
  end

  private

  def quiz_attempt_params
    params.require(:quiz_attempt).permit(:trivia_category_id, :score)
  end
end
