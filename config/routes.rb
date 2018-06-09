Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations'}
  root "static_pages#index"
  get 'start', to: 'static_pages#start'
  get 'business', to: 'static_pages#business'
  resources :vendors do 
    resources :services, only: [:show, :edit, :update, :new, :create, :destroy]
    resources :availabilities
    resources :unavailabilities
    resources :vacations
  end 
  resources :services, only: [:index]
  get 'tags/:tag', to: 'services#index', as: :tag
  resources :administrators, only: [:index]
  resources :tags, only: [:new, :create, :destroy]
end
