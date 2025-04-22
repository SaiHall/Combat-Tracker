Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  get "/", to: "welcome#index"
  get "/player_characters", to: "player_characters#index"
  get "/player_characters/new", to: "player_characters#new"
  post "/player_characters", to:"player_characters#create"
  get "/player_characters/:id", to: "player_characters#show"

  get "/combat", to: "combat#index"
  get "/combat/new", to: "combat#new"
  post "/combat", to: "combat#create"
  get "/combat/:id", to: "combat#show"
end
