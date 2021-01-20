Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
  
  get '/login', to: "sessions#login", as: "login" 
  post '/login', to: "sessions#create"
  
  resources :users do 
    resources :workouts, only: [:index, :new]
  end

  resources :workouts

  resources :exercises

end
