class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(klass_params)
    if @klass.valid?
       @klass.save
      redirect_to klass_path(@klass)
    else
      render :new
    end
  end

  def show
    @klass = Klass.find(params[:id])
  end

  def edit
    @klass = Klass.find(params[:id])
  end

  def update
    @klass = Klass.find(params[:id])
    if @klass.update(klass_params)
      redirect_to klass_path(@klass)
    else
      render :edit
    end
  end

  def destroy
    klass.find(params[:id]).destroy
    redirect_to klasses_path
  end

  def enroll
    byebug
  end

  private

  def klass_params
    params.require(:klass).permit(:name)
  end
end
