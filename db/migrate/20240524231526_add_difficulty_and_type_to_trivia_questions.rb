class AddDifficultyAndTypeToTriviaQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :trivia_questions, :difficulty, :string
    add_column :trivia_questions, :question_type, :string
  end
end
