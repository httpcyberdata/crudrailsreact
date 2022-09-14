Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :reviews do
        collection { post :create , via: :options  }
        # via: :options ?
      end
    end
  end
  get '*path', to: 'pages#index', via: :all
end
