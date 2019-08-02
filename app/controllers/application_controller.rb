class ApplicationController < ActionController::Base

  def current_user
    if session[:user_id]
        User.find(session[:user_id])
    else
        false
    end
end
#
end
