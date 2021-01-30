Rails.application.routes.draw do
  # ルート
  root 'static_pages#index'

  # セッション
  get     '/login'  =>  'sessions#login_form'
  post    '/login'  =>  'sessions#login'
  delete  '/logout' =>  'sessions#logout'
  
  # ホーム
  get     '/index'   =>  'static_pages#index'

  # ナレッジ
  resources :knowledges

  # TODO ブックナレッジをブックのネストに配置する
  # ブック
  resources :books

  # ブックナレッジ
  resources :book_knowledges, only: [:show]

  # タグ
  resources :tags, only: [:index, :create, :destroy] do
    member do
      get :show_books
      get :show_knowledges
    end
  end
end
