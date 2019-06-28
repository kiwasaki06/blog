Rails.application.routes.draw do

  get 'static_pages/new'
  get 'login' =>  'sessions#new'
  post 'login'  =>  'sessions#create'
  delete 'logout' =>  'sessions#destroy'
  get 'signup'  =>  'users#new'
  post 'signup'  =>  'users#create'
  resources :users
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [:create]
  resources :posts do
    resources :comments, only:[:create, :destroy]
  end
  get 'posts/about'
  root 'posts#index'
end
