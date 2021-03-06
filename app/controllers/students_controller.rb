class StudentsController < ApplicationController
  skip_before_action :require_signin, only: [:new, :create]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      sign_in @student
      redirect_to @student
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(params[:student].permit(:name, :email, :password))
      redirect_to @student
    else
      render edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(
      :name,
      :email,
      :password,
      :password_confirmation
      )
  end
end
