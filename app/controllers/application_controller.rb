class ApplicationController < ActionController::Base
  def index
    @houses = House.all
  end

  def authent_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def login

  end


end
