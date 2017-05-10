Rails.application.routes.draw do
  resources :maplocations
  resources :reviews
  resources :purchases
  resources :books, :authors
  mount Monologue::Engine, at: '/blog'
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root to: 'books#index'


  
end
