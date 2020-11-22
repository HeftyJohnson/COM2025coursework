Rails.application.routes.draw do
  get 'home', to: 'site#home'
  get 'tracks', to: 'tracks#index'
  get 'drivers', to: 'drivers#index'
  get 'teams', to: 'teams#index'
  resources :entries
  resources :positions
  resources :races
  resources :tracks
  resources :drivers
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
