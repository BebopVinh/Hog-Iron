class StudentsController < ApplicationController
  def index
    @students = Student.all.sort_by(&:name)
  end

  def new
    @student = Student.new
  end

  def create

    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      flash[:notice] = "Welcome to Hogwarts, #{@student.name}!"
      redirect_to student_path(@student)
    else
      flash[:alert] = @student.errors.full_messages

      render :new
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
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :heritage, :alive, :patronus, klass_ids: [])
    #left out age and pet for now
  end
end
