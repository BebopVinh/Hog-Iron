class StudentsController < ApplicationController


  def index
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
      render :sorting_hat
    else
      flash[:alert] = @student.errors.full_messages
      render :new
    end
  end

  def show
    @student = Student.find_by_id(params[:id])
    binding.pry
    @student_classes_route = "student_path(#{@student})/classes"
    @house = @student.house
    flash[:notice] = "Accio .... "
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.house_id == nil
      sort_student(@student)
    end

    if @student.update(student_params)
      flash[:notice] = "Successfully updated #{@student.name}!"
      redirect_to student_path(@student)
    else
      flash[:alert] = @student.errors.full_messages
      render :edit
    end
  end

  def klasses
    @student = Student.find(params[:id])
    @klasses = @student.klasses
  end

  def sorting_hat
    @student = Student.find(params[:id])
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
    params.require(:student).permit(:name, :heritage, :status, :patronus, :trait, klass_ids: [])
    #left out pet for now
  end

  def sort_student(student)
    student.traits_by_house.each do |house, traits|
      #binding.pry
      if traits.include?(student_params[:trait])
        student.house_id = House.find_by(name: house.to_s).id
        student.save
      end
    end

    if student_params[:trait] == nil
      student.house_id = rand(1..4)
      student.save
    end

    flash[:success] = "It's another one for ...#{@student.house.name}!!"

  end
end
