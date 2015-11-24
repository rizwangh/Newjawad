

Rails.application.routes.draw do
  get 'home/home'

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get "home" => "home#home", as: :home
end
