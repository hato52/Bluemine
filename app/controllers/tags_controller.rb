class TagsController < ApplicationController
  before_action :is_user_logged_in

  def index
    @tags = Tag.all.page(params[:page]).per(3)
  end
  
  def create
    @tags = Tag.new(tag_params)
    if @tags.save
      flash[:success] = "タグを登録しました"
      redirect_to tags_url
    else
      flash.now[:danger] = "タグの登録に失敗しました"
      render :index
    end
  end

  def destroy
    Tag.find(params[:id]).destroy
    flash[:success] = "タグを削除しました"
    redirect_to tags_url
  end
  
  private
    def tag_params
      params.permit(:name)
    end
end
