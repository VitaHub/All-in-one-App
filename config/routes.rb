Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: %i[index new create]
end
