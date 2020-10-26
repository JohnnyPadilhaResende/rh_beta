require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :core do
    resources :instrucoes
  end
  namespace :core do
    resources :contatos
  end
  namespace :core do
    resources :enderecos
  end
  namespace :core do
    resources :funcionals
  end
  namespace :core do
    resources :pessoals
  end
<<<<<<< Updated upstream
=======
  namespace :core do
    resources :niveis
  end
  
  resources :testes

>>>>>>> Stashed changes
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
