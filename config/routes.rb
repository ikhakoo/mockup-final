Rails.application.routes.draw do

  get 'registrations/new'

  get 'registrations/create'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :courses
  root :to => "dashboard#index"

  get '/front', to: 'dashboard#front'
end
