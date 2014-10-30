class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :quiz_responses

  def course_name
    quiz_responses.first.course_name
  end
end
