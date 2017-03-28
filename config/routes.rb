Rails.application.routes.draw do
  root 'urls#index'

  # get '/new' => "original_url#new"

  resources :urls
end
