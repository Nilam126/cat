Rails.application.routes.draw do
 
 
  

  resources :attendace3s
 # resources :attendance2s 
  resources :employee2s
  get 'home/index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
   resources :users
   root 'home#index'
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome',to: 'sessions#welcome', as: 'welcome'
get 'new', to: 'employee2s#new', as:  'new'

resources :employee3s, only: [:show, :index, :new, :create, :edit, :update, :destroy]



 get  'home/about'

get  'employee2s/list'

 #root 'employee2s#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
