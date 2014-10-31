class QuizResponse < ActiveRecord::Base
  belongs_to :answer
  belongs_to :question
  belongs_to :quiz

  after_validation :check_correctness

  def course_name
    question.course.name
  end

  def check_correctness
    self.correct = self.answer == question.correct_answer
  end
end

