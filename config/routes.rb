Rails.application.routes.draw do


  #resources :meals, only: [:index, :new, :update]
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]

    devise_for :users, :controllers => {registrations: 'registrations',confirmations: 'confirmations'}
    devise_for :admins


  root 'static_pages#index'

  get '/index', to: 'static_pages#index'

  get '/about', to: 'static_pages#about'

  get '/how', to: 'static_pages#how', as: 'how_it_works'

  get '/our_plans', to: 'static_pages#plans'

  get '/dashboard', to: 'static_pages#dashboard'

  get '/delete_account', to: 'static_pages#delete_account'
  # => meals
  get '/meals', to: 'meals#index'
  get '/meals/new', to: 'meals#new'
  get '/meals/:id', to: 'meals#show', as: 'meal'
  post '/meals', to: 'meals#create'
  get '/meals/:id/edit', to: 'meals#edit', as:'meal_edit'
  patch '/meals/:id', to: 'meals#update'
  put '/meals/:id', to: 'meals#update'
  delete '/meals/:id', to: 'meals#destroy'



  get '/orders', to: 'orders#show'

  get 'orders/new', to: 'orders#new'

  get 'orders/destroy', to: 'orders#destroy'

  patch '/delivered', to: 'orders#delivered'

  get '/cart', to: 'carts#show'

  get '/cart', to: 'carts#create'

  patch '/order_items', to: 'order_items#create'

  patch '/order_item/:id', to: 'cart#update'

  delete '/order_item/:id', to: 'cart#destroy'

  get '/payment', to: 'orders#payment'

  post '/checkout', to: 'orders#checkout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
