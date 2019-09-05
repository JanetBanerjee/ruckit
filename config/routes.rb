Rails.application.routes.draw do
  resources :challenges
  resources :fixtures
  devise_for :users
  root to: 'static#homepage'

  get "/about" => "static#about"
  get "/contact" => "static#contact"
  get "/list" => "list#challenge"
end
