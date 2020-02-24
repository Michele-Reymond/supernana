Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/stop', to: 'pages#stop'

  resources :alerts, only: [:index, :create, :update]

  resources :users, only: [] do
      resources :contacts, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
