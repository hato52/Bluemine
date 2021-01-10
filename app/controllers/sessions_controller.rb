class SessionsController < ApplicationController
  def login_form
  end

  def login
    user = User.find_by(login_id: params[:session][:login_id])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = 'ログインしました'
      log_in user
      redirect_to index_path
    else
      flash.now[:danger] = 'IDかパスワードが間違っています'
      render action: :login_form
    end
  end

  def logout
    log_out
    flash[:success] = 'ログアウトしました'
    redirect_to login_path
  end
end
