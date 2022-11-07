Rails.application.routes.draw do
  resources :users

  post "/sessions" => "sessions#create"

  resources :snapshots
end
