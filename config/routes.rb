Rails.application.routes.draw do
  resources :users

  post "/sessions" => "sessions#create"

  resources :snapshots do
    resources :artists
  end
end
