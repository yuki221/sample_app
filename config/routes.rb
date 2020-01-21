Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
