Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root "static_pages#index"
  get 'start', to: 'static_pages#start'
  resources :vendors do 
    resources :services, only: [:show, :edit, :update, :new, :create, :destroy]
  end 
  resources :services, only: [:index]
  get 'tags/:tag', to: 'services#index', as: :tag
end
