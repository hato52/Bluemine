class PostsController < ApplicationController

  def index
    redirect_to show_books_posts_path
  end

  def show_books
    @books = Book.where(user_id: current_user.id)
    @book_tags = get_tag(@books)
    @books = Kaminari.paginate_array(@books).page(params[:page]).per(5)
  end

  def show_knowledges
    @knowledges = Knowledge.where(user_id: current_user.id)
    @knowledge_tags = get_tag(@knowledges)
    @knowledges = Kaminari.paginate_array(@knowledges).page(params[:page]).per(5)
  end
end
