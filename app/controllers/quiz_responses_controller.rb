class QuizResponsesController < ApplicationController

  def new
    @course = Course.find(params[:course_id])

  end

  def update
    @quiz_response = QuizResponse.find(params[:id])
    @quiz_response.update(quiz_response_params)
    @quiz_response.check_correctness
    @quiz_response.save
    @quiz = @quiz_response.quiz
    render 'quizzes/new'
  end

  private

  def quiz_response_params
    params.require(:quiz_response).permit(
      :question_id,
      :answer_id,
      :quiz_id
    )
  end
end
