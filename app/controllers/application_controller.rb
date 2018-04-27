class ApplicationController < ActionController::Base


  def current_user
    User.find_by_id(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_login
    unless current_user
      cookies[:redirect_to] = request.referrer
      redirect_to new_sessions_path, flash: {info: '您需要登录，才能进行下一步操作'}
    end
  end

  def force_login!(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
  end

  protected

  def require_current_user
    if current_user.id != @user.id
      redirect_to user_path(current_user), flash: {info: '您只能修改自己的资料'}
    end
  end

  def require_not_login
    if current_user
      redirect_to root_path, flash: {info: '您已登录，不能进行此操作'}
    end
  end

end
