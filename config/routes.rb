Rails.application.routes.draw do
  root 'static_pages#index'
  
  get 'user/new'

  get 'user/login'

  get 'static_pages/index'

  get 'static_pages/meals'

  get 'static_pages/about'

  get 'static_pages/how'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
