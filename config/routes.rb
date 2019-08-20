Rails.application.routes.draw do
  resources :challenges
  resources :fixtures
  devise_for :users
  root to: 'static#homepage'
end
