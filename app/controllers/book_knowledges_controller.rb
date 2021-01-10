class BookKnowledgesController < ApplicationController
  before_action :is_user_logged_in

  def show
    # ブックの情報
    @book = Book.find(params[:id])
    @tags = Tag.find(@book.tag_ids)

    # ナレッジの情報
    book_knowledges = BookKnowledge.where(book_id: params[:id])
    @knowledges = []
    book_knowledges.each do |book_knowledge|
      @knowledges.push(Knowledge.find(book_knowledge.knowledge_id))
    end
    @knowledges = Kaminari.paginate_array(@knowledges).page(params[:page]).per(1)
  end
end
