Myapp::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :contents
  resources :events, only: [:index, :show, :update, ] do
    get 'entry' => 'events#entry', on: :member
    post 'keyword_authentication', on: :member
  end
  resources :event_participations
  resources :schedules
  resources :speakers
  resources :users

  root :to => "home#index"

#  authenticated :user do
#    root :to => 'home#index'
#  end

  resources :speakers do
    member do
      get :photo
    end
  end
end
