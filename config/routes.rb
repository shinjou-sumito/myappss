Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :users, only: :show
end
