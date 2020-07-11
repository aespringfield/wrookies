Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players, only: [:show, :index]
  # get 'players/install', to: 'players#install'
  # get 'players/:id/glarf', to: 'players#show'
  resources :users, only: [:show, :create, :edit] do
    resources :teams
  end
end
