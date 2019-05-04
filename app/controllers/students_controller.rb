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
    @student_classes_route = "#{student_path(@student)}/classes"}
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
    student.traits_by_house.each do |house, trait|
      if student_params[:trait] == trait
        student.house = House.find_by(name: house)
        student.house_id = student.house.id
      else
        student.house_id = rand(1..4)
        student.house = House.find_by_id(student.house_id)
      end
      flash[:notice] = "It's another one for ...#{@student.house.name}!!"
    end
  end



end
