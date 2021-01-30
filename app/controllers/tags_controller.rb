class TagsController < ApplicationController
  before_action :is_user_logged_in

  def index
    @tags = Tag.all.page(params[:page]).per(40)
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] = "タグを登録しました"
      redirect_to tags_url
    else
      flash[:danger] = "タグの登録に失敗しました"
      redirect_to tags_url
    end
  end

  def destroy
    Tag.find(params[:id]).destroy
    flash[:success] = "タグを削除しました"
    redirect_to tags_url
  end

  def show_books
    @tag = Tag.find(params[:id])
    @books = Book.find(@tag.book_ids)
    @book_tags = get_tag(@books)
    @books = Kaminari.paginate_array(@books).page(params[:page]).per(5)
  end

  def show_knowledges
    @tag = Tag.find(params[:id])
    @knowledges = Knowledge.find(@tag.knowledge_ids)
    @knowledge_tags = get_tag(@knowledges)
    @knowledges = Kaminari.paginate_array(@knowledges).page(params[:page]).per(5)
  end

  private
    def tag_params
      params.permit(:name)
    end
end
