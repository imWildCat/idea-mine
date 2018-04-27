class SessionsController < ApplicationController

  before_action :require_not_login, only: [:new, :create]
  before_action :require_login, only: :destroy

  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u and u.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_sessions_path(email: params[:email]), flash: {error: 'Email 或者密码错误'}
    end
  end

  def destroy
    logout
    redirect_to root, flash: {info: '您已经注销'}
  end
end
