categories = ['Sports', 'Entertainment', 'Science', 'History']
categories.each do |category|
  TriviaCategory.create(name: category)
end

TriviaCategory.all.each do |category|
  10.times do
    category.trivia_questions.create(
      question: "Sample question for #{category.name}",
      correct_answer: "Correct answer",
      incorrect_answers: ["Wrong answer 1", "Wrong answer 2", "Wrong answer 3"]
    )
  end
end
