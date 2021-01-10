Rails.application.routes.draw do
  root 'static_pages#index'

  # セッション
  get     '/login'  =>  'sessions#login_form'
  post    '/login'  =>  'sessions#login'
  delete  '/logout' =>  'sessions#logout'
  
  # インデックスページ
  get     '/index'   =>  'static_pages#index'

  # ナレッジ
  resources :knowledges

  # ブック
  resources :books

  # ブックナレッジ
  resources :book_knowledges, only: [:show]

  # タグ
  resources :tags, only: [:index, :new, :create, :destroy]
end
