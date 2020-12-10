Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :visits, only: %i[index new create show]

  resources :places, only: %i[new create]
end
