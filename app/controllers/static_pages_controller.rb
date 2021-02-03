class StaticPagesController < ApplicationController
  before_action :is_user_logged_in
  
  def index
    @books = Book.limit(5).order('updated_at DESC')
    @knowledges = Knowledge.limit(5).order('updated_at DESC')
  end
end
