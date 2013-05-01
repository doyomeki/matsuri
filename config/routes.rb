Myapp::Application.routes.draw do
  devise_for :users

  resources :contents
  resources :events
  resources :event_participations
  resources :schedules
  resources :speakers
  resources :users

  root :to => "home#index"

#  authenticated :user do
#    root :to => 'home#index'
#  end
end
