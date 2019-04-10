Rails.application.routes.draw do
  resources :songs
  resources :hidden_gems
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  namespace :api do
    namespace :v1 do
      get '/login', to: 'login#create'
      get '/auth/spotify/callback', to: 'users#create'
    end
  end
end
