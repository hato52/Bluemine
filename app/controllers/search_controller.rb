class SearchController < ApplicationController
  before_action :is_user_logged_in

  def index
    unless params[:q] == nil
      @search_word = params[:q]

      @books = Book.search(@search_word).limit(5)
      @book_tags = get_tag(@books)

      @knowledges = Knowledge.search(@search_word).limit(5)
      @knowledge_tags = get_tag(@knowledges)

      @tags = Tag.search(@search_word).limit(5)
    else
      flash[:danger] = "検索パラメータが不足しています"
      redirect_to index_url
    end
  end
  
  def show_books
    unless params[:q] == nil
      @search_word = params[:q]
      @books = Book.search(@search_word)
      @book_tags = get_tag(@books)
      @books = Kaminari.paginate_array(@books).page(params[:page]).per(5)
    else
      flash[:danger] = "検索パラメータが不足しています"
      redirect_to index_url
    end
  end

  def show_knowledges
    unless params[:q] == nil
      @search_word = params[:q]
      @knowledges = Knowledge.search(@search_word)
      @knowledge_tags = get_tag(@knowledges)
      @knowledges = Kaminari.paginate_array(@knowledges).page(params[:page]).per(5)
    else
      flash[:danger] = "検索パラメータが不足しています"
      redirect_to index_url
    end
  end

  def show_tags
    unless params[:q] == nil
      @search_word = params[:q]
      @tags = Tag.search(@search_word)
      @tags = Kaminari.paginate_array(@tags).page(params[:page]).per(5)
    else
      flash[:danger] = "検索パラメータが不足しています"
      redirect_to index_url
    end
  end
end
