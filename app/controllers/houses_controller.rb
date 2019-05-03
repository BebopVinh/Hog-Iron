class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find_by_id(params[:id])
    @head_of_house = @house.teacher
    @head_of_house_name = @house.teacher_name
  end
end
