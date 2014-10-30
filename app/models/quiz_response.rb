class QuizResponse < ActiveRecord::Base
  belongs_to :answer
  belongs_to :question
  belongs_to :quiz

  def course_name
    question.course.name
  end

  def check_correctness
    # Answer.find(:id).correct
  end
end
