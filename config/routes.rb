Rails.application.routes.draw do
  root to: 'home#index'
  get '/home', to: 'home#index'
  post '/search', to: 'home#search'
end
