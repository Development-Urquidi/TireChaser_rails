Rails.application.routes.draw do

  namespace :vendors do
    get 'tires/new'
  end

  namespace :vendors do
    get 'tires/edit'
  end

  root 'vendors#index'

  resources :vendors do
    collection do
      get :search_by_tire
      get :search_by_car
      get :order_price
      get :order_rate
      get :admin
    end
    resources :tires
  end

  get 'pages/about'
  get 'pages/authenticate'


end