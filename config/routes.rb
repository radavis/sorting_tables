Rails.application.routes.draw do
  devise_for :users
  resources :game_consoles
  root 'game_consoles#index'
end
