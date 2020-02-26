Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/stop', to: 'pages#stop'
  get '/resources', to: 'pages#resources'
  get '/resources/documents', to: 'documents#index', as: :documents
  get '/resources/documents/:id', to: 'documents#show', as: :document
  get '/stop_alert', to: 'users#stop_alert'

  resources :alerts, only: [:index, :create, :update, :show]

  resources :users, only: [:show] do
    resources :contacts, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
