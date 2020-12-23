class BooksController < ApplicationController
  before_action :is_user_logged_in

  def index
    @books = Book.all.page(params[:page]).per(3)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_entry_params)

    if @book.save!
      flash[:success] = "ブックの登録が完了しました"
      redirect_to books_url
    else
      flash.now[:danger] = "ブックの登録に失敗しました"
      render action: :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_entry_params)
      flash[:success] = "ブックの更新が完了しました"
      redirect_to books_url
    else
      flash[:danger] = "ブックの更新に失敗しました"
      render action: :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "ブックの削除が完了しました"
    redirect_to books_url
  end

  private
    def book_search_params
    end

    def book_entry_params
      params.require(:book).permit(:title, :detail, :user_id, knowledge_ids: [], tag_ids: [])
    end
end
