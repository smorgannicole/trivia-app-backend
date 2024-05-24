class TriviaCategory < ApplicationRecord
  has_many :trivia_questions
end
