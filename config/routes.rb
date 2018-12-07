Rails.application.routes.draw do
  get 'players/new'

  get 'players/create'

  post 'games/create'

  get 'games/:id', to: 'games#show', as: 'game'

  get 'games/:id/attack', to: 'games#attack', as: 'attack'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
