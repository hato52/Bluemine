class UsersController < ApplicationController
  before_action :is_user_logged_in, except: [:new, :create]

  def show
    @user = current_user
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
      flash[:danger] = "ユーザの登録に失敗しました"
      redirect_to new_user_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_entry_params)
      flash[:success] = "プロフィールを更新しました"
      redirect_to user_path
    else
      flash[:danger] = "入力内容に不備があります"
      render action: :edit
    end
  end

  private
    def user_entry_params
      params.require(:user).permit(:login_id, :password, :name)
    end
end
