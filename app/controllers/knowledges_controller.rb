class KnowledgesController < ApplicationController
  before_action :is_user_logged_in

  def index
    @knowledges = Knowledge.all.page(params[:page]).per(5)
    @tags = get_tag(@knowledges)
  end

  def show
    @knowledge = Knowledge.find(params[:id])
    @tags = Tag.find(@knowledge.tag_ids)
  end

  def new
    @knowledge = Knowledge.new
  end

  def create
    @knowledge = Knowledge.new(knowledge_entry_params)

    if @knowledge.save!
      flash[:success] = "ナレッジの登録が完了しました"
      redirect_to knowledges_url
    else
      flash.now[:danger] = "ナレッジの登録に失敗しました"
      render action: :new
    end
  end

  def edit
    @knowledge = Knowledge.find(params[:id])
  end

  def update
    @knowledge = Knowledge.find(params[:id])

    if @knowledge.update(knowledge_entry_params)
      flash[:success] = "ナレッジの更新が完了しました"
      redirect_to knowledges_url
    else
      flash[:danger] = "ナレッジの更新に失敗しました"
      render action: :edit
    end
  end

  def destroy
    Knowledge.find(params[:id]).destroy
    flash[:success] = "ナレッジの削除が完了しました"
    redirect_to knowledges_url
  end

  def search
    @knowledges = Knowledge.search(params[:q])
    render json: @knowledges
  end

  private
    def knowledge_search_params
    end

    def knowledge_entry_params
      params.require(:knowledge).permit(:title, :content, :user_id, tag_ids: [])
    end
end
