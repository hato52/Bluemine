Rails.application.routes.draw do
  # root 'sessions#login_form'
  root 'static_pages#index'

  # セッション
  get     '/login'  =>  'sessions#login_form'
  post    '/login'  =>  'sessions#login'
  delete  '/logout' =>  'sessions#logout'
  
  # インデックスページ
  get     '/index'   =>  'static_pages#index'
end
