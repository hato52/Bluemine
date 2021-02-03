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
  resources :knowledges do
    collection do
      get :search
    end
  end

  # ブック
  resources :books do
    resources :book_knowledges, only: [:show]
  end

  # タグ
  resources :tags, only: [:index, :create, :destroy] do
    member do
      get :show_books
      get :show_knowledges
    end

    collection do
      get :search
    end
  end
end
