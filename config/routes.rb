Rails.application.routes.draw do
  root 'species#index'
  resources :species do
    resources :sightings
  end
end
