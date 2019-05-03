class SessionsController < ApplicationController
  def create
    student = Student.find_by(username: params[:username])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student_path(student)
    else
      render 'application/login'
    end
  end
end
