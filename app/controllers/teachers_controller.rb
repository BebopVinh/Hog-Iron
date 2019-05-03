class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.valid?
      @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    @klasses = @teacher.klasses
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end
  
  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      render :edit
    end
  end

  def destroy
    Teacher.find(params[:id]).destroy
    redirect_to teachers_path
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
