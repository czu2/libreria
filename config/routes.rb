Rails.application.routes.draw do
  devise_for :users
  resources :books
  
  get 'profile', to: 'profile#show', as: 'user_profile'
  
  patch 'books/set_state/:id', to: 'books#set_state', as: 'set_book_reserve'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
end
