class SessionsController < ApplicationController
  skip_before_action :require_signin, only: [:new, :create]

  def new
  end

  def create
    student = Student.find_by(email: params[:session][:email].downcase)

    if student && student.authenticate(params[:session][:password])
      sign_in student
      redirect_back_or root_path
    else
      flash[:error] = 'Invalid email or password'
      redirect_to new_session_path
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
