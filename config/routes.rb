Rails.application.routes.draw do
  devise_for :users
  root to:'books#index'
  resources :books, only: [:index,:new,:create,:show,:destroy,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
