class ApplicationController < ActionController::Base
  def current_user
    User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      redirect_to root_path, flash: {info: '您需要登录'}
    end
  end

  def force_login!(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
  end
end
