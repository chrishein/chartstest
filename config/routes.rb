Chartstest::Application.routes.draw do
  resources :data_points

  resources :data_topics do
    member do
      get 'chart'
    end
  end
  
  resources :countries

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
