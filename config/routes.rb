Rails.application.routes.draw do
  devise_for :admins
  resources :projects

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
