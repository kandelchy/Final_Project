Rails.application.routes.draw do
  resources :maplocations
  resources :reviews
  resources :purchases
  resources :books, :authors
  mount Monologue::Engine, at: '/blog'
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root to: 'books#index'

  match 'contact' => 'contact#new', :as => 'contact1', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  
end
