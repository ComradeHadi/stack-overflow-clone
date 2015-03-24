Rails.application.routes.draw do
  root to: 'questions#index'
  get '/log-in', to: 'sessions#new'
  post '/log-in', to: 'sessions#create'
  get '/log-out', to: 'sessions#destroy', as: :log_out

  resources :users
  resources :questions do
    resources :answers
  end
end
