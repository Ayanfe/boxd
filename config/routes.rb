Rails.application.routes.draw do


  get '/meals_new', to: 'meals#new'
  post '/meals_new', to: 'meals#new'

  get 'meals_create', to: 'meals#create'
  post 'meals_create', to: 'meals#create'

  get 'meals_edit', to: 'meals#edit'
  post 'meals_edit', to: 'meals#edit'

  get 'meals_update', to: 'meals#2update'
  post 'meals_update', to: 'meals#2update'

  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions',confirmations: 'confirmations'}

  root 'static_pages#index'

  get '/index', to: 'static_pages#index'

  get '/meals', to:'meals#index', as: 'our_meals'

  get '/about', to: 'static_pages#about'

  get '/how', to: 'static_pages#how', as: 'how_it_works'

  get '/our_plans', to: 'static_pages#plans'

  get '/dashboard', to: 'static_pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
