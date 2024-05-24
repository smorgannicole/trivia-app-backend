class CreateQuizAttempts < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trivia_category, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
