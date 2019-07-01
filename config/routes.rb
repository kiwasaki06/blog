Rails.application.routes.draw do

  get 'login' =>  'sessions#new'
  post 'login'  =>  'sessions#create'
  delete 'logout' =>  'sessions#destroy'
  get 'signup'  =>  'users#new'
  post 'signup'  =>  'users#create'
  resources :users, only:[:create, :show, :edit, :update]
  resources :posts do
    resources :comments, only:[:create, :destroy]
  end
  get 'static_pages/about' =>  'static_pages#about'
  root 'static_pages#new'
end
