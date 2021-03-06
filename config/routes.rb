Rails.application.routes.draw do
  devise_for :clients, controllers: { omniauth_callbacks: 'clients/omniauth_callbacks'}
  devise_for :admins
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root "static_pages#index"
  get 'start', to: 'static_pages#start'
  get 'business', to: 'static_pages#business'
  get 'calendar', to: 'static_pages#calendar'
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
  resources :categories, only: [:show]
end
