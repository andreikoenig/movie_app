Rails.application.routes.draw do
  resources :movies


  devise_for :users, :controllers => { registrations: 'users/registrations' }

  post '/movies/import', to: 'movies#import', as: 'movie_importer'

  root "movies#index"
end
