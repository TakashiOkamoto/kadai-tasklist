Rails.application.routes.draw do

  get 'tasklists/create'

  get 'tasklists/destroy'

  get 'microposts/create'

  get 'microposts/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
  resources :tasklists, only: [:create, :destroy]
end
