Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  delete '/logout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create]
  
  root to: 'welcome#home'
  delete '/delete/:id', to: 'exercises_workouts#destroy', as: 'delete'

  resources :users do 
    resources :comments, only: [:index]
    resources :workouts, only: [:index]    # my page link keeps redirecting to previouse user##
  end

  resources :workouts do
    resources :comments, only: [:new]
  end

  resources :comments

  resources :exercises

  get '*path', to: 'errors#error_404', via: :all
  

end
