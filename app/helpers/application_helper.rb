module ApplicationHelper
   def login_logout
      if logged_in?
         link_to "Logout", logout_path, class: "glyphicon glyphicon-log-out"
      else
         link_to "Login", login_path, class: "glyphicon glyphicon-log-in"
      end
   end

   def logged_in?
      !!current_user
  end

  def current_user
      @current_user = Student.find_by_id(session[:user_id])
  end
end
