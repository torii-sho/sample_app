Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show]
  
  get 'users/show'
  
  root  'static_pages#home'
  match '/about', to: 'static_pages#about',  via: 'get'  
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
