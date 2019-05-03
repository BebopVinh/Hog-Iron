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

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user = Student.find_by_id(session[:user_id])
  end

  helper_method :current_user
end
