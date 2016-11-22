Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show] do
    resources :books, only: [:index]
  end
  resources :users, only: [:new, :create, :edit, :update, :show]
  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
