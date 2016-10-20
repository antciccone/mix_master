Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:show, :index]
  resources :playlists

  root to: 'artists#root'


  get '/auth/spotify/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
