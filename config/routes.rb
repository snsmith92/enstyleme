Rails.application.routes.draw do
  devise_for :clients, controllers: { omniauth_callbacks: 'clients/omniauth_callbacks'}
  devise_for :admins
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root "static_pages#index"
  get 'start', to: 'static_pages#start'
  get 'business', to: 'static_pages#business'
  resources :vendors do 
    resources :services, only: [:show, :edit, :update, :new, :create, :destroy]
    resource :booking_items, only: [:create]
    resources :availabilities
    resources :unavailabilities
    resources :vacations
    resource :calendar, only: [:show]
  end 
  resources :booking_items, only: [:destroy, :update]
  resource :cart, only: [:show]
  resources :services, only: [:index]
  get 'tags/:tag', to: 'services#index', as: :tag
  resources :administrators, only: [:index]
  resources :tags, only: [:new, :create, :destroy]
  resources :categories, only: [:show]
end
