Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard'

  resources :places, only: %i[index new create] do
    resources :visits, only: %i[new create]
  end

  resources :visits, only: %i[index show]
end
