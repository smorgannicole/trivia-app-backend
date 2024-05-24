class QuizAttempt < ApplicationRecord
  belongs_to :user
  belongs_to :trivia_category
end
