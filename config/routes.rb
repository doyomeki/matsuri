Myapp::Application.routes.draw do
  get "home/index"

  resources :speakers


  resources :contents


  resources :event_participations


  resources :schedules


  resources :events


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end