Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: %i[index new create]
  namespace :api do
    resources :songs, only: %i[create]
  end
end
