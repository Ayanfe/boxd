Rails.application.routes.draw do

  #resources :meals, only: [:index, :new, :update]
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]

  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions',confirmations: 'confirmations'}

  root 'static_pages#index'

  get '/index', to: 'static_pages#index'

  get '/about', to: 'static_pages#about'

  get '/how', to: 'static_pages#how', as: 'how_it_works'

  get '/our_plans', to: 'static_pages#plans'

  get '/dashboard', to: 'static_pages#dashboard'

  # => meals
  get '/meals', to: 'meals#index'
  get '/meals/new', to: 'meals#new'
  get '/meals/:id', to: 'meals#show', as: 'meal'
  post '/measl', to: 'meals#create'
  get '/meals/:id/edit', to: 'meals#edit', as:'meal_edit'
  patch '/meals/:id', to: 'meals#update'
  put '/meals/:id', to: 'meals#update'
  delete '/meals/:id', to: 'meals#destroy'

  # => orders
  get 'orders', to: 'orders#create'

  get 'orders/new', to: 'orders#new'

  get 'orders/destroy', to: 'orders#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
