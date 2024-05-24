class CreateTriviaQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :trivia_questions do |t|
      t.text :question
      t.string :correct_answer
      t.text :incorrect_answers
      t.references :trivia_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
