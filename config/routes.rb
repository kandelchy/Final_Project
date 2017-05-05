Rails.application.routes.draw do
  resources :reviews
  resources :purchases
  resources :books, :authors
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root to: 'books#index'
end
