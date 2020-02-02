Rails.application.routes.draw do
  get 'users/new'
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  get 'users/show'
  get 'users/index'
  get 'posts/new'
  get 'posts/index'
  root "pages#home"
  resources :posts,          only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
