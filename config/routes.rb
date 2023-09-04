Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "home/about" => "homes#about"
  resources :books, only: [:index, :show, :edit, :update, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
