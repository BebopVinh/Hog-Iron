class StudentsController < ApplicationController
  def index
    #@students = Student.all.sort_by(&:name)
    @houses = House.all.sort_by(&:name)
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
    @student = Student.find_by_id(params[:id])
    @house = @student.house
    flash[:notice] = "Accio .... "
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Successfully updated #{@student.name}!"
      redirect_to student_path(@student)
    else
      flash[:alert] = @student.errors.full_messages
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @name = @student.name
    @student.destroy
    flash[:notice] = "Avada Kedavra! Let this #{@name} be destroyed."
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :heritage, :status, :patronus, klass_ids: [])
    #left out age and pet for now
  end
end
