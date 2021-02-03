class BookKnowledgesController < ApplicationController
  before_action :is_user_logged_in

  def show
    # ブックの情報
    @book = Book.find(params[:book_id])
    @tags = Tag.find(@book.tag_ids)

    # ナレッジの情報
    @knowledge = Knowledge.find(params[:id])
  end
end
