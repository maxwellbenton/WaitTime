Rails.application.routes.draw do
  resources :user_wait_times
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end