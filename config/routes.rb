Rails.application.routes.draw do

  get '/', to: 'main#index', as: 'root'

  resources :works
  post '/works/:id/upvote', to: 'votes#upvote', as: 'work_upvote'

  resources :votes, only: [:new]

  resources :users, only: [:show, :index, :create]

  get '/login', to: 'sessions#login_form', as: 'login'
  post '/login', to: 'sessions#login'

  delete '/login', to: 'sessions#logout', as: 'logout'


end
