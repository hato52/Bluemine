class SessionsController < ApplicationController
  def login_form
  end

  def login
    user = User.find_by(login_id: params[:sessions][:login_id])
    if user && user.authenticate(params[:sessions][:password])
      flash[:success] = 'ログインしました'
      log_in user
      redirect to index_path
    else
      flash.now[:danger] = 'IDかパスワードが間違っています'
      render action: :login_form
  end

  def logout
    log_out
    flash[:success] = 'ログアウトしました'
    redirect_to root_url
  end
end
