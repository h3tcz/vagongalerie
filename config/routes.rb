Rails.application.routes.draw do

  devise_for :users

  root 'home#index'

  resources :home, only: :index do
    get :homepage, on: :collection
  end
  resources :projects, only: [:index, :show]

  namespace :admin do
    root 'home#index'

    resources :home, only: [:index]

    resources :users
    # resources :static_pages
  end
end
