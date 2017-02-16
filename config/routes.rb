Rails.application.routes.draw do
  root 'patients#index'
  resources :doctors
  resources :patients
  resources :appointments, only: [:new, :create, :destroy]
end
