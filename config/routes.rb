Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :users do 
    resources :workouts, only: [:index, :new]
  end

  resources :workouts

  resources :exercises

end
