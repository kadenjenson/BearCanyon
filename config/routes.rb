Rails.application.routes.draw do
  devise_for :admins, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  resources :projects

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end