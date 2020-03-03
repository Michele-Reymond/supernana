Rails.application.routes.draw do
  get 'informations/index'
  devise_for :users


  resources :users, only: [:show] do
    resources :contacts, only: [:new, :create, :edit, :update]
  end
  root to: 'pages#home'

  get '/stop', to: 'pages#stop'
  get '/resources', to: 'pages#resources'
  get '/resources/documents', to: 'documents#index', as: :documents
  get '/resources/contacts', to: 'informations#index', as: :informations
  get '/resources/documents/:id', to: 'documents#show', as: :document
  get '/stop_alert', to: 'users#stop_alert'
  get '/resources/chat_rooms', to: 'chat_rooms#index'
  get 'resources/chat_rooms/:id', to: 'chat_rooms#show', as: :chat_room
  post 'resources/chat_rooms/:chat_room_id/chat_messages', to: 'chat_messages#create', as: :chat_room_chat_messages

  mount Sidekiq::Web => '/sidekiq'
  mount ActionCable.server => "/cable"

  # resources :chat_rooms, only: [:show] do
  #   resources :chat_messages, only: [:create]
  # end


  resources :alerts, only: [:index, :create, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
