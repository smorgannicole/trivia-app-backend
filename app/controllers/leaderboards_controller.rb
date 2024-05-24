class LeaderboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    leaderboard = QuizAttempt.joins(:user)
                             .select('users.email, SUM(quiz_attempts.score) AS total_score')
                             .group('users.id')
                             .order('total_score DESC')
                             .limit(10)
    render json: leaderboard
  end
end
