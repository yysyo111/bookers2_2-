Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/index'
  # get 'users/edit'
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'
  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  resources :books
  resources :users, only: [:new, :index, :show, :create, :update, :destroy, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
