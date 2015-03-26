Rails.application.routes.draw do
  # get 'tasks/index'

  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/create'

  # get 'tasks/edit'

  # get 'tasks/update'

  # get 'tasks/destroy'

  root 'static_pages#home'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :index]
  get 'profile' => 'users#profile'

  get '/about', to: 'static_pages#about', as: :about
  get '/contact', to: 'static_pages#contact', as: :contact

  resources :projects do
    resources :tasks, except: [:index, :show]
  end
  
end
