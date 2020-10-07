Rails.application.routes.draw do
  devise_for :users
  root to:'books#index'
  resources :books do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

