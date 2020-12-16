Rails.application.routes.draw do
  root 'sessions#login_form'

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
end
