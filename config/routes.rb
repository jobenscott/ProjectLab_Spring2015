Rails.application.routes.draw do
  devise_for :users
  get 'users/index'

  get 'users/profile'

  get 'users/show'

  root 'static_pages#home'

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact

  resources :projects 
  
end
