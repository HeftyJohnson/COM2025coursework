Rails.application.routes.draw do
  get 'home', to: 'site#home'
  get 'tracks', to: 'tracks#index'
  get 'drivers', to: 'drivers#index'
  get 'teams', to: 'teams#index'
  get 'races', to: 'races#index'
  get 'help', to: 'help#index'
  get 'entries', to: 'entries#index'
  get 'positions', to: 'positions#index'
  resources :entries
  resources :positions
  resources :races
  resources :tracks
  resources :drivers
  resources :teams
  resources :help, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
