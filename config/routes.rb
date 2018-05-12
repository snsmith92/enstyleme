Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"
  get 'start', to: 'static_pages#start'
  resources :vendors do 
    resources :services
  end 
end
