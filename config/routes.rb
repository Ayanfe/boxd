Rails.application.routes.draw do


  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions'}

  root 'static_pages#index'

  get '/index', to: 'static_pages#index'

  get '/meals', to:'static_pages#meals', as: 'our_meals'

  get '/about', to: 'static_pages#about'

  get '/how', to: 'static_pages#how', as: 'how_it_works'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
