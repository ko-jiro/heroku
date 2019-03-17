Rails.application.routes.draw do
  # get 'users/new'     resources :usersの中に入ってるからいらないやつ
  # post 'users/new', 'users#create'       メンタリング時に試しに入力したやつ
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  get "pages/help"

  resources :users
end
