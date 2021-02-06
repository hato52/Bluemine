class UsersController < ApplicationController
  before_action :is_user_logged_in, except: [:new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_entry_params)

    if @user.save
      flash[:success] = "ユーザの登録が完了しました"
      redirect_to login_path
    else
      flash.now[:danger] = "ユーザの登録に失敗しました"
      render action: :new
    end
  end

  private
    def user_entry_params
      params.require(:user).permit(:login_id, :password, :name)
    end
end
